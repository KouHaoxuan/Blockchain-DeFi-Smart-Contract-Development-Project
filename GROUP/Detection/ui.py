import tkinter as tk
from tkinter import filedialog, messagebox
from tkinter.scrolledtext import ScrolledText
import subprocess


def save_contract():
    contract_code = text_box.get("1.0", tk.END).strip()
    if not contract_code:
        messagebox.showerror("Error", "Smart contract code cannot be empty！")
        return
    file_path = filedialog.asksaveasfilename(defaultextension=".sol",
                                             filetypes=[("Solidity Files", "*.sol"), ("All Files", "*.*")])
    if file_path:
        try:
            with open(file_path, 'w') as file:
                file.write(contract_code)
            messagebox.showinfo("Success", f"The smart contract has been successfully saved to the {file_path}")
        except Exception as e:
            messagebox.showerror("Error", f"Error while saving file: {e}")


def run_slither(output_text):
    target_directory = r'D:\Detection'
    output_text.config(state=tk.NORMAL)  # Allowed to write outputs
    output_text.delete(1.0, tk.END)
    try:
        print("Running Slither...")  # Debugging output, which usually does not need to be printed in the UI
        result = subprocess.run(['slither', '.'], cwd=target_directory, check=True, stdout=subprocess.PIPE,
                                stderr=subprocess.PIPE, text=True)
        output = result.stdout + "\n\n" + (result.stderr if result.stderr else "")
        output_text.insert(tk.END, output)
    except subprocess.CalledProcessError as e:
        err=f"Report:"
        error_message = f"\n{e.stderr if e.stderr else 'No specific error message'}"
        output_text.insert(tk.END, err + "\n" + error_message)
    except FileNotFoundError:
        error_message = "Slither executable not found. Please ensure Slither is installed and in the specified directory or in your system PATH."
        output_text.insert(tk.END, "\n\n" + error_message)
    except Exception as e:
        error_message = f"Unable to run Slither: {str(e)}"
        output_text.insert(tk.END, "\n\n" + error_message)
    finally:
        output_text.config(state=tk.DISABLED)  # Re-disable editing
        output_text.yview(tk.END)  # Scroll to end of text


# Creating the main window
root = tk.Tk()
root.title("Smart Contract Vulnerability Detection Tool")

# Create and place a text box for entering the contract code
text_box = ScrolledText(root, wrap=tk.WORD, width=80, height=20)
text_box.pack(padx=10, pady=10)

# Create and place a save button
save_button = tk.Button(root, text="Save Contract", command=save_contract)
save_button.pack(pady=10)

# Creating and placing output boxes to display command line output
output_text = ScrolledText(root, wrap=tk.WORD, width=80, height=10)
output_text.pack(padx=10, pady=5, fill=tk.BOTH, expand=True)
output_text.config(state=tk.DISABLED)  # Disable editing of output boxes

# Create and place a Start Detection button
run_slither_button = tk.Button(root, text="Start Detection", command=lambda: run_slither(output_text))
run_slither_button.pack(pady=10)

# Run the main loop
root.mainloop()