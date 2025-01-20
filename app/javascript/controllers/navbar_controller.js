import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["menu", "dropdownMenu"];

  connect() {
    this.isOpen = false; // Estado para el menú principal
    this.dropdownOpen = false; // Estado para el dropdown

    // Añadir evento global para manejar clics fuera del dropdown
    document.addEventListener("click", this.closeDropdownOnOutsideClick.bind(this));
  }

  disconnect() {
    // Eliminar evento global al desconectar el controlador
    document.removeEventListener("click", this.closeDropdownOnOutsideClick.bind(this));
  }
  
  toggleMenu() {
    this.isOpen = !this.isOpen;
    if (this.isOpen) {
      this.menuTarget.classList.remove("hidden");
    } else {
      this.menuTarget.classList.add("hidden");
    }
  }

  toggleDropdown(event) {
    event.preventDefault(); // Evitar comportamiento predeterminado
    event.stopPropagation(); // Evitar que el evento se propague al documento

    this.dropdownOpen = !this.dropdownOpen;

    if (this.dropdownOpen) {
      this.dropdownMenuTarget.classList.remove("hidden");
    } else {
      this.dropdownMenuTarget.classList.add("hidden");
    }
  }

  closeDropdownOnOutsideClick(event) {
    // Verificar si el clic ocurrió fuera del dropdown
    if (this.dropdownOpen && !this.dropdownMenuTarget.contains(event.target)) {
      this.dropdownOpen = false;
      this.dropdownMenuTarget.classList.add("hidden");
    }
  }
}
