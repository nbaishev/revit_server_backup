import os

REVIT_SERVER_DIR="C:\\ProgramData\\Autodesk\\Revit Server 2024\\Projects"


def list_folders(path: str):
    try:
        # Получаем список папок в указанной директории
        folders = [name for name in os.listdir(path) if os.path.isdir(os.path.join(path, name))]
        return folders
    except FileNotFoundError:
        print("Указанный путь не найден.")
        return []
    except PermissionError:
        print("Недостаточно прав для доступа к директории.")
        return []

if __name__ == "__main__":
    path = REVIT_SERVER_DIR
    folders = list_folders(path)
    print("Найденные папки:")
    for folder in folders:
        print(folder)
