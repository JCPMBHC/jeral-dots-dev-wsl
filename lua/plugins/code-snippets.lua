return {
  "L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
  config = function()

    local ls = require("luasnip")
    local fmt = require("luasnip.extras.fmt").fmt
    local rep = require("luasnip.extras").rep

    local i = ls.insert_node
    local f = ls.function_node
    local s = ls.s
    local c = ls.c
    local types = require("luasnip.util.types")
    local d = ls.dynamic_node
    local sn = ls.snippet_node

    ls.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      delete_check_events = "TextChanged",
      ext_opts = {
        [types.choiceNode] = {
          active = {
            virt_text = { { "choiceNode", "Comment" } },
          },
        },
      },
      ext_base_prio = 300,
      enable_autosnippets = true,
      store_selection_keys = "<Tab>",
    })

    local title_case = function(index)
      return f(function(arg)
        return string.upper(string.sub(arg[1][1], 1, 1)) .. string.sub(arg[1][1], 2)
      end, { index })
    end

    ls.add_snippets("react", {
      s("use", fmt("const [{}, set{}] = React.useState({});", { i(1, ""), title_case(1), i(2, "") })),
  
      s("rfc", fmt([[
        export const {} = () => {{
          {}
          return (
            <>
              {}
            </>
          );
        }};
        ]], { i(1, ""), i(2, ""), i(3, "") })),
        
      s("rfcp", fmt([[

        type {}Props = {{
          {}
        }};

        export const {} = ({{ {} }}: {}Props) => {{
          {}
          return (
            <>{}</>
          );
        }};
        ]], { i(1, ""), i(2, ""), rep(1), i(3, ""), rep(1), i(4, ""), i(5, "") })),

      s("clg-rn", 
         d(1, function(_, parent)
        return sn(
          1,
          fmt("console.log('🚀 " .. parent.snippet.env.TM_FILENAME .. " -> #" .. parent.snippet.env.TM_LINE_NUMBER .. " ~', JSON.stringify({}, null, 2));", {
            i(1, 'name'),
          })
        )
      end, {})),

      s("clg-r", 
         d(1, function(_, parent)
        return sn(
          1,
          fmt("console.log('🚀 " .. parent.snippet.env.TM_FILENAME .. " -> #" .. parent.snippet.env.TM_LINE_NUMBER .. " ~', {});", {
            i(1, 'name'),
          })
        )
      end, {})),
    
    }, { key = "react", })

    ls.add_snippets("javascript", {
      s("rfc", fmt([[
        export const {} = () => {{
          {}
          return (
            <>
              {}
            </>
          );
        }};
        ]], { i(1, ""), i(2, ""), i(3, "") })),
        
      s("rfcp", fmt([[

        type {}Props = {{
          {}
        }};

        export const {} = ({{ {} }}: {}Props) => {{
          {}
          return (
            <>{}</>
          );
        }};
        ]], { i(1, ""), i(2, ""), rep(1), i(3, ""), rep(1), i(4, ""), i(5, "") })),

      s("import", fmt([[import {{ {} }} from "{}";]], { i(1, ""), i(2, "") })),
      s("if", fmt(
        [[
          if ({}) {{
            {}
          }}
        ]], { i(1, ""), i(2, "") })),
      s("clg-rn", 
         d(1, function(_, parent)
        return sn(
          1,
          fmt("console.log('🚀 " .. parent.snippet.env.TM_FILENAME .. " -> #" .. parent.snippet.env.TM_LINE_NUMBER .. " ~', JSON.stringify({}, null, 2));", {
            i(1, 'name'),
          })
        )
      end, {})),
      s("clg-r", 
         d(1, function(_, parent)
        return sn(
          1,
          fmt("console.log('🚀 " .. parent.snippet.env.TM_FILENAME .. " -> #" .. parent.snippet.env.TM_LINE_NUMBER .. " ~', {});", {
            i(1, 'name'),
          })
        )
      end, {})),
    }, {
      key = "javascript",
    })

    ls.add_snippets("astro", {
      s("html5", fmt([[
        <!DOCTYPE html>
        <html lang="en">
          <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>{}</title>
          </head>
          
          <body>
            <h1>{}</h1>
          </body>
        </html>
      ]], { i(1, ""), i(2, "") }))
    }, {
      key = "astro",
    })

    ls.add_snippets("typescript", {

      s("rfc", fmt([[
        export const {} = () => {{
          {}
          return (
            <>
              {}
            </>
          );
        }};
        ]], { i(1, ""), i(2, ""), i(3, "") })),
        
      s("rfcp", fmt([[

        type {}Props = {{
          {}
        }};

        export const {} = ({{ {} }}: {}Props) => {{
          {}
          return (
            <>{}</>
          );
        }};
        ]], { i(1, ""), i(2, ""), rep(1), i(3, ""), rep(1), i(4, ""), i(5, "") })),
        
      s("type",
        fmt([[
        type {} = {{
          {}
        }};
        ]], { i(1, ""), i(2, "") })),
        s("clg-rn", 
         d(1, function(_, parent)
        return sn(
          1,
          fmt("console.log('🚀 " .. parent.snippet.env.TM_FILENAME .. " -> #" .. parent.snippet.env.TM_LINE_NUMBER .. " ~', JSON.stringify({}, null, 2));", {
            i(1, 'name'),
          })
        )
      end, {})),
      s("clg-r", 
         d(1, function(_, parent)
        return sn(
          1,
          fmt("console.log('🚀 " .. parent.snippet.env.TM_FILENAME .. " -> #" .. parent.snippet.env.TM_LINE_NUMBER .. " ~', {});", {
            i(1, 'name'),
          })
        )
      end, {})),
    }, { key = "typescript", })

    ls.add_snippets("lua", {
      s("snip", fmt([[s("{}", fmt({}), {{ {} }})]], { i(1, ""), i(2, ""), i(3, "") })),
      s("test", fmt([[{} {}]], { i(1, ""), title_case(1) })),
    }, { key = "lua", })
    
    ls.filetype_extend("javascriptreact", { "react", "javascript", "html", })
    ls.filetype_extend("typescriptreact", { "react", "javascript", "html", })
    ls.filetype_extend("typescript", { "javascript" })
    ls.filetype_extend("javascript", { "javascript" })
  end,
}