.class public Lorg/checkerframework/com/github/javaparser/ast/Modifier;
.super Lorg/checkerframework/com/github/javaparser/ast/Node;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    }
.end annotation


# instance fields
.field private keyword:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "keyword"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "keyword"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 139
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->setKeyword(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    .line 140
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->customInitialization()V

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V
    .locals 1
    .param p1, "keyword"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 131
    return-void
.end method

.method public static abstractModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 54
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static varargs createModifierList([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 2
    .param p0, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->toNodeList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public static finalModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 62
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static nativeModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 78
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static privateModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 50
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static protectedModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 46
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static publicModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 42
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static staticModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 58
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static strictfpModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 82
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static synchronizedModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 74
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static transientModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 66
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static transitiveModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 86
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method

.method public static volatileModifier()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 70
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 146
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 152
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->clone()Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2

    .line 198
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->clone()Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->keyword:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModifierMetaModel;
    .locals 1

    .line 204
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->modifierMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ModifierMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModifierMetaModel;

    move-result-object v0

    return-object v0
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

    .line 182
    if-nez p1, :cond_0

    .line 183
    const/4 v0, 0x0

    return v0

    .line 184
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

    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setKeyword(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .locals 2
    .param p1, "keyword"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keyword"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->keyword:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    if-ne p1, v0, :cond_0

    .line 164
    return-object p0

    .line 166
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->KEYWORD:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->keyword:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->keyword:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 168
    return-object p0
.end method
