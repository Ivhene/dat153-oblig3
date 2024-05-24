.class public Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
.super Lorg/checkerframework/com/github/javaparser/ast/Node;
.source "Name.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithIdentifier<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
        ">;"
    }
.end annotation


# instance fields
.field private identifier:Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/NonEmptyProperty;
    .end annotation
.end field

.field private qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    const/4 v0, 0x0

    const-string v1, "empty"

    invoke-direct {p0, v0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "identifier"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "qualifier"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .param p3, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "qualifier",
            "identifier"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 78
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setQualifier(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 79
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setIdentifier(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 80
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->customInitialization()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/String;)V
    .locals 1
    .param p1, "qualifier"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .param p2, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "qualifier",
            "identifier"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method static synthetic lambda$isInternal$0(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p0, "parent"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 195
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return v0
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

    .line 86
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 92
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 2

    .line 161
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NameMetaModel;
    .locals 1

    .line 167
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->nameMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/NameMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NameMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getQualifier()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public isInternal()Z
    .locals 2

    .line 195
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isTopLevel()Z
    .locals 1

    .line 188
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->isInternal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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

    .line 142
    if-nez p1, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    .line 145
    if-ne p1, v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->removeQualifier()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 147
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeQualifier()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 2

    .line 155
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setQualifier(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    return-object v0
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

    .line 173
    if-nez p1, :cond_0

    .line 174
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    .line 176
    if-ne p1, v0, :cond_1

    .line 177
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setQualifier(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 178
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setIdentifier(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "identifier"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setIdentifier(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object p1

    return-object p1
.end method

.method public setIdentifier(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "identifier"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->identifier:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 104
    return-object p0

    .line 106
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->IDENTIFIER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->identifier:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->identifier:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setQualifier(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 2
    .param p1, "qualifier"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "qualifier"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    .line 129
    return-object p0

    .line 131
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->QUALIFIER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 134
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->qualifier:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 135
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 136
    return-object p0
.end method
