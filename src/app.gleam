// https://imba.io/
// memoised dom

// ################## 

// crowdhailer
//  — 
// Today at 07:50

// let name = reactive("")
// div([
//   text(constant("Hello "),
//   text(name),
//   input(name),
// ])


// An API that sort of works. it's bugging me more than it should that I have to implement the reactive variable in a mutable way.
// worth noting that in this API, there is only oneway binding from input to name. essentially every onchange in the input calls reactive.set_value(name, new_input_value)
// Which means you can only have one input setting the name, ideally.
// another place where ownership could be interesting. i.e. if the input owned name you could assure it was being set by only that input.
// ##########

// import int
// import browser/console

// pub external type Observable(t);
// // pub type Observable(t) {
// //     Foo(x: t)
// // }
// pub fn text(value: Observable(a), mapper: fn(a) -> String) {
//     todo
// }

// fn int_to_string(x: Int) -> String {
//     todo
// }

// pub fn main(){
//     let x: Observable(Int) = todo
//     console.log("hello");

//     [
//         button()
//       text(x, int_to_string)
//     ]
// }

pub type Maybe(a) {
    Some(a)
    None
}


pub external type Element

pub fn text(mapper) {
    fn (content: String, state: Maybe(#(String, Element))) {
        case state {
            None -> {
                // createElement
                let element = todo
                #(content, element)
            }
            Some(#(previous, element)) if previous == content ->             
                #(content, element)


            Some(#(_, element)) -> {
                // element.textContent = content
                #(content, element)
            }
        }
    }
}

pub type Either(a, b) {
    Left(a)
    Right(b)
}


pub fn sif(mapper, yes, _no) {
    fn (x, state) {
        let state = case mapper(x) {
            True -> case state {
                Left(inner) -> Left(yes(x, inner))
                // needs to dispose right
                Right(_) -> Left(yes(x, None))
            }
            // False -> Nil
        }
        state
    }
}

fn each(items: List(a), map: fn(a) -> b) -> List(b) {
    todo
}

// Theres no i with a div and children that's each
pub fn div(children) {
    todo
    fn (x, state) {
        // zipped state
        // Needs a call to create if element doesn't exist
        each(children, fn(child) { child(x, state)})
    }
}

pub fn s_each(mapper, child) {
    fn (x, state) {
        each(mapper(x), fn(item) { child(#(item, 1, x)) })
    }
}

pub fn main() {
    let render = sif(
        fn(x) {x == "hello"},
        // type reducer could wrap state and return early if smaller set matches
        text(fn(_) {"WASSUP"}) ,
        // |> fn(func) { fn(x, state) {func(x.small, state)} } ,
        text(fn(x) {x})
        // button(on_click: update)
        // ignore all button click untill update processed.

    )

    let x = todo //intitial
    let state, prom_x = render(x)
    // state and promise of message
    // The function can return a promise of the message to be applied. Or a promise to the next state
    then(prom_x, render)
    // This ends up with a not tail call optimised loop of sorts

    // let r = div([
    //     s_each(fn(x) { x }, 
    //         text(fn(_) {"ho"}
    //         )
    //     )
    // ])

    // loop(render, render())
}

// fn loop(render, state)

// pub fn render2(x, state) {
//     sif(x, text(x, state))
// }

// pub fn loop(x: Int) {
//     render(x)
//     loop(x + 1)
// }

// fn bind(x, y) {
//     todo
// }

// pub fn view(x) {
//     bind(x, fn(x) -> {

//     })
    
    
// }

