module MyModule
    # 共通して提供したいメソッドなど
end

class MyClass1
    include MyModule
    # MyClass1に固有のメソッドなど
end

class MyClass2
    include MyModule
    # MyClass2に固有のメソッドなど
end

module HelloModule
    VERSION = "1.0"

    def hello(name)
        puts "hello, #{name}."
    end
    module_function :hello
end

p HelloModule::VERSION
HelloModule.hello("Alice")
include HelloModule
p VERSION
hello("Alice")