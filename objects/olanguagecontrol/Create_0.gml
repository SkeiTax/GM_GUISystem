/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
draw_set_font(fDefoult)

enum Languages
{
	English,
	Russian,
	Spanish
}

global.isLangChange = false
global.lang = choose(Languages.English, Languages.Russian, Languages.Spanish)
preLang = global.lang

global.langText[Languages.English] = ds_map_create()
global.langText[Languages.Russian] = ds_map_create()
global.langText[Languages.Spanish] = ds_map_create()

//Language
global.langText[Languages.English][? "English"]		= "English"
global.langText[Languages.English][? "Russian"]		= "Russian"
global.langText[Languages.English][? "Spanish"]		= "Spanish"
global.langText[Languages.English][? "Portuguese"]	= "Portuguese"
global.langText[Languages.English][? "Japanese"]	= "Japanese"
// Mein menu
global.langText[Languages.English][? "Continue"]	= "Continue"
global.langText[Languages.English][? "New game"]	= "New Game"
global.langText[Languages.English][? "Load"]		= "Load"
global.langText[Languages.English][? "Options"]		= "Options"
global.langText[Languages.English][? "Exit"]		= "Exit"
//Choose
global.langText[Languages.English][? "Back"]		= "Back"
global.langText[Languages.English][? "Next"]		= "Next"
global.langText[Languages.English][? "Chose"]		= "Chose"
global.langText[Languages.English][? "Save"]		= "Save"
// Main options
global.langText[Languages.English][? "Language"]	= "Language"
global.langText[Languages.English][? "Total value"]	= "Total Value"
global.langText[Languages.English][? "SFX value"]	= "SFX Value"
global.langText[Languages.English][? "Resolution"]	= "Resolution"
global.langText[Languages.English][? "Graphics quality"] = "Graphics quality"
global.langText[Languages.English][? "Low"]			= "Low"
global.langText[Languages.English][? "Medium"]		= "Medium"
global.langText[Languages.English][? "High"]		= "High"
global.langText[Languages.English][? "Difficulty"]	= "Difficulty"
global.langText[Languages.English][? "Easy"]		= "Easy"
global.langText[Languages.English][? "Normal"]		= "Normal"
global.langText[Languages.English][? "Hard"]		= "Hard"



global.langText[Languages.Russian][? "English"]		= "Английский"
global.langText[Languages.Russian][? "Russian"]		= "Русский"
global.langText[Languages.Russian][? "Spanish"]		= "Испанский"
global.langText[Languages.Russian][? "Portuguese"]	= "Португальский"
global.langText[Languages.Russian][? "Japanese"]	= "Японский"
// Mein menu
global.langText[Languages.Russian][? "Continue"]	= "Продолжить"
global.langText[Languages.Russian][? "New game"]	= "Новая игра"
global.langText[Languages.Russian][? "Load"]		= "Загрузить"
global.langText[Languages.Russian][? "Options"]		= "Настройки"
global.langText[Languages.Russian][? "Exit"]		= "Выход"
//Choose
global.langText[Languages.Russian][? "Back"]		= "Назад"
global.langText[Languages.Russian][? "Next"]		= "Вперёд"
global.langText[Languages.Russian][? "Chose"]		= "Выберите"
global.langText[Languages.Russian][? "Save"]		= "Сохранить"
// Main options
global.langText[Languages.Russian][? "Language"]	= "Язык"
global.langText[Languages.Russian][? "Total value"]	= "Общая громкость"
global.langText[Languages.Russian][? "SFX value"]	= "Громкость эффектов"
global.langText[Languages.Russian][? "Resolution"]	= "Разрешение"
global.langText[Languages.Russian][? "Graphics quality"] = "Качество графики"
global.langText[Languages.Russian][? "Low"]			= "Низкое"
global.langText[Languages.Russian][? "Medium"]		= "Среднее"
global.langText[Languages.Russian][? "High"]		= "Высокое"
global.langText[Languages.Russian][? "Difficulty"]	= "Сложность"
global.langText[Languages.Russian][? "Easy"]		= "Легко"
global.langText[Languages.Russian][? "Normal"]		= "Нормально"
global.langText[Languages.Russian][? "Hard"]		= "Тяжело"



global.langText[Languages.Spanish][? "English"]		= "Inglés"
global.langText[Languages.Spanish][? "Russian"]		= "Rusa"
global.langText[Languages.Spanish][? "Spanish"]		= "Español"
global.langText[Languages.Spanish][? "Portuguese"]	= "Portugués"
global.langText[Languages.Spanish][? "Japanese"]	= "Japonesa"
// Mein menu
global.langText[Languages.Spanish][? "Continue"]	= "Continuar"
global.langText[Languages.Spanish][? "New game"]	= "Nuevo Juego"
global.langText[Languages.Spanish][? "Load"]		= "Carga"
global.langText[Languages.Spanish][? "Options"]		= "Opcion"
global.langText[Languages.Spanish][? "Exit"]		= "Salida"
//Choose
global.langText[Languages.Spanish][? "Back"]		= "Atrás"
global.langText[Languages.Spanish][? "Next"]		= "Hacia adelante"
global.langText[Languages.Spanish][? "Chose"]		= "Elegid"
global.langText[Languages.Spanish][? "Save"]		= "Guardar"
// Main options
global.langText[Languages.Spanish][? "Language"]	= "Language"
global.langText[Languages.Spanish][? "Total value"]	= "Valor Total"
global.langText[Languages.Spanish][? "SFX value"]	= "Valor de SFX"
global.langText[Languages.Spanish][? "Resolution"]	= "Resolucion"
global.langText[Languages.Spanish][? "Graphics quality"] = "Calidad gráfica"
global.langText[Languages.Spanish][? "Low"]			= "Bajo"
global.langText[Languages.Spanish][? "Medium"]		= "Medio"
global.langText[Languages.Spanish][? "High"]		= "Alto"
global.langText[Languages.Spanish][? "Difficulty"]	= "Dificultad"
global.langText[Languages.Spanish][? "Easy"]		= "Sencillo"
global.langText[Languages.Spanish][? "Normal"]		= "Normal"
global.langText[Languages.Spanish][? "Hard"]		= "Duro"
