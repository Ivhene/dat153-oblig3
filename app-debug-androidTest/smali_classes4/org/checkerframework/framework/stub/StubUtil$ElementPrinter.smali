.class final Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;
.super Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;
.source "StubUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/stub/StubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ElementPrinter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static toString(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 169
    new-instance v0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;

    invoke-direct {v0}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;-><init>()V

    .line 170
    .local v0, "printer":Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v0}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->getOutput()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;

    .line 182
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 188
    .local v1, "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .end local v1    # "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    :cond_0
    goto :goto_0

    .line 195
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;

    .line 200
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 206
    .local v1, "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .end local v1    # "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    :cond_0
    goto :goto_0

    .line 213
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p2, "arg"    # Ljava/lang/Void;

    .line 218
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .param p2, "arg"    # Ljava/lang/Void;

    .line 264
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .param p2, "arg"    # Ljava/lang/Void;

    .line 227
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .param p2, "arg"    # Ljava/lang/Void;

    .line 232
    sget-object v0, Lorg/checkerframework/framework/stub/StubUtil$2;->$SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive:[I

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StubUtil: unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    goto :goto_0

    .line 243
    :pswitch_4
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    goto :goto_0

    .line 240
    :pswitch_5
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    goto :goto_0

    .line 237
    :pswitch_6
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    goto :goto_0

    .line 234
    :pswitch_7
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    nop

    .line 260
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .param p2, "arg"    # Ljava/lang/Void;

    .line 270
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .param p2, "arg"    # Ljava/lang/Void;

    .line 277
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "StubUtil: don\'t print type args"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method
