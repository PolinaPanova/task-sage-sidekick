-- Добавить поля subtasks и plan в таблицу tasks
ALTER TABLE public.tasks 
ADD COLUMN IF NOT EXISTS subtasks text,
ADD COLUMN IF NOT EXISTS plan text;

-- Комментарии для полей
COMMENT ON COLUMN public.tasks.subtasks IS 'JSON-строка с подзадачами, созданными ИИ';
COMMENT ON COLUMN public.tasks.plan IS 'JSON-строка с планом дня, созданным ИИ';
