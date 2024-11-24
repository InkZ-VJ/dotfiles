require("CopilotChat").setup {
    -- See Configuration section for options
    -- debug = false, -- Enable debug logging (same as 'log_level = 'debug')
    log_level = 'info', -- Log level to use, 'trace', 'debug', 'info', 'warn', 'error', 'fatal'
    proxy = nil, -- [protocol://]host[:port] Use this proxy
    allow_insecure = false, -- Allow insecure server connections

    system_prompt = prompts.COPILOT_INSTRUCTIONS, -- System prompt to use
    model = 'gpt-4o', -- Default model to use, see ':CopilotChatModels' for available models
    agent = 'copilot', -- Default agent to use, see ':CopilotChatAgents' for available agents (can be specified manually in prompt via @).
    context = nil, -- Default context to use, 'buffers', 'buffer', 'files' or none (can be specified manually in prompt via #).
    temperature = 0.1, -- GPT result temperature

    question_header = '## User ', -- Header to use for user questions
    answer_header = '## Copilot ', -- Header to use for AI answers
    error_header = '## Error ', -- Header to use for errors
    separator = '───', -- Separator to use in chat
    highlight_headers = true, -- Highlight headers in chat, disable if using markdown renderers (like render-markdown.nvim)

    show_folds = true, -- Shows folds for sections in chat
    show_help = true, -- Shows help message as virtual lines when waiting for user input
    auto_follow_cursor = true, -- Auto-follow cursor in chat
    auto_insert_mode = false, -- Automatically enter insert mode when opening window and on new prompt
    insert_at_end = false, -- Move cursor to end of buffer when inserting text
    clear_chat_on_new_prompt = false, -- Clears chat on every new prompt
    highlight_selection = true, -- Highlight selection in the source buffer when in the chat window

    history_path = vim.fn.stdpath('data') .. '/copilotchat_history', -- Default path to stored history
    callback = nil, -- Callback to use when ask response is received

    -- default selection
    selection = function(source)
        return select.visual(source) or select.buffer(source)
    end,

    -- default prompts
    prompts = {
        Explain = {
            prompt = '/COPILOT_EXPLAIN Write an explanation for the selected code and diagnostics as paragraphs of text.',
        },
        Review = {
            prompt = '/COPILOT_REVIEW Review the selected code.',
            callback = function(response, source)
                -- see config.lua for implementation
            end,
        },
        Fix = {
            prompt = '/COPILOT_GENERATE There is a problem in this code. Rewrite the code to show it with the bug fixed.',
        },
        Optimize = {
            prompt = '/COPILOT_GENERATE Optimize the selected code to improve performance and readability.',
        },
        Docs = {
            prompt = '/COPILOT_GENERATE Please add documentation comments to the selected code.',
        },
        Tests = {
            prompt = '/COPILOT_GENERATE Please generate tests for my code.',
        },
        Commit = {
            prompt = 'Write commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit.',
            selection = select.gitdiff,
        },
    },

    -- default window options
    window = {
        layout = 'vertical',    -- 'vertical', 'horizontal', 'float', 'replace'
        width = 0.5,            -- fractional width of parent, or absolute width in columns when > 1
        height = 0.5,           -- fractional height of parent, or absolute height in rows when > 1
        -- Options below only apply to floating windows
        relative = 'editor',    -- 'editor', 'win', 'cursor', 'mouse'
        border = 'single',      -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
        row = nil,              -- row position of the window, default is centered
        col = nil,              -- column position of the window, default is centered
        title = 'Copilot Chat', -- title of chat window
        footer = nil,           -- footer of chat window
        zindex = 1,             -- determines if window is on top or below other floating windows
    },

    -- default mappings
    mappings = {
        complete = {
            detail = 'Use @<Tab> or /<Tab> for options.',
            insert = '<Tab>',
        },
        close = {
            normal = 'q',
            insert = '<C-c>'
        },
        reset = {
            normal = '<C-l>',
            insert = '<C-l>'
        },
        submit_prompt = {
            normal = '<CR>',
            insert = '<C-s>'
        },
        accept_diff = {
            normal = '<C-y>',
            insert = '<C-y>'
        },
        yank_diff = {
            normal = 'gy',
            register = '"',
        },
        show_diff = {
            normal = 'gd'
        },
        show_system_prompt = {
            normal = 'gp'
        },
        show_user_selection = {
            normal = 'gs'
        },
    },
}
