.class public abstract Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;
.super Lorg/checkerframework/com/github/javaparser/ast/Node;
.source "ModuleDirective.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 30
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->customInitialization()V

    .line 31
    return-void
.end method


# virtual methods
.method public asModuleExportsDirective()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleExportsDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asModuleExportsStmt()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleExportsDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asModuleOpensDirective()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleOpensDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asModuleOpensStmt()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleOpensDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asModuleProvidesDirective()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleProvidesDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asModuleProvidesStmt()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleProvidesDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asModuleRequiresDirective()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleRequiresDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asModuleRequiresStmt()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleRequiresDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asModuleUsesDirective()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleUsesDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asModuleUsesStmt()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s is not an ModuleUsesDirective"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;
    .locals 2

    .line 44
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleDirectiveMetaModel;
    .locals 1

    .line 248
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->moduleDirectiveMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ModuleDirectiveMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleDirectiveMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifModuleExportsDirective(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;>;"
    return-void
.end method

.method public ifModuleExportsStmt(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;>;"
    return-void
.end method

.method public ifModuleOpensDirective(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;>;"
    return-void
.end method

.method public ifModuleOpensStmt(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;>;"
    return-void
.end method

.method public ifModuleProvidesDirective(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;>;"
    return-void
.end method

.method public ifModuleProvidesStmt(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;>;"
    return-void
.end method

.method public ifModuleRequiresDirective(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;>;"
    return-void
.end method

.method public ifModuleRequiresStmt(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;>;"
    return-void
.end method

.method public ifModuleUsesDirective(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;>;"
    return-void
.end method

.method public ifModuleUsesStmt(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;>;"
    return-void
.end method

.method public isModuleExportsDirective()Z
    .locals 1

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleExportsStmt()Z
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleOpensDirective()Z
    .locals 1

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleOpensStmt()Z
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleProvidesDirective()Z
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleProvidesStmt()Z
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleRequiresDirective()Z
    .locals 1

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleRequiresStmt()Z
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleUsesDirective()Z
    .locals 1

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleUsesStmt()Z
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 36
    if-nez p1, :cond_0

    .line 37
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "replacementNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    .line 50
    if-nez p1, :cond_0

    .line 51
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public toModuleExportsDirective()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleExportsStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleOpensDirective()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleOpensStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleProvidesDirective()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleProvidesStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleRequiresDirective()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleRequiresStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleUsesDirective()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            ">;"
        }
    .end annotation

    .line 238
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleUsesStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
