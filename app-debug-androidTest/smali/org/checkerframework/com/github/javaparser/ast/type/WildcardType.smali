.class public Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
.super Lorg/checkerframework/com/github/javaparser/ast/type/Type;
.source "WildcardType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;",
        ">;"
    }
.end annotation


# instance fields
.field private extendedType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private superType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "extendedType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .param p3, "superType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "extendedType",
            "superType"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 222
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setExtendedType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 223
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setSuperType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 224
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->customInitialization()V

    .line 225
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "extendedType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .param p3, "superType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "extendedType",
            "superType",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p4, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-direct {p0, p1, p4}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 76
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setExtendedType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 77
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setSuperType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 78
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->customInitialization()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)V
    .locals 2
    .param p1, "extendedType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extendedType"
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .param p1, "extendedType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .param p2, "superType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "extendedType",
            "superType",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 67
    .local p3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 68
    return-void
.end method

.method static synthetic lambda$asString$0(Ljava/lang/StringBuilder;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/StringBuilder;
    .param p1, "t"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "str",
            "t"
        }
    .end annotation

    .line 169
    const-string v0, " extends "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$asString$1(Ljava/lang/StringBuilder;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/StringBuilder;
    .param p1, "t"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "str",
            "t"
        }
    .end annotation

    .line 170
    const-string v0, " super "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
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

    .line 84
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 90
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 170
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public asWildcardType()Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .locals 0

    .line 236
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .locals 2

    .line 187
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    return-object v0
.end method

.method public getExtendedType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->extendedType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/WildcardTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TypeMetaModel;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/WildcardTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/WildcardTypeMetaModel;
    .locals 1

    .line 193
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->wildcardTypeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/WildcardTypeMetaModel;

    return-object v0
.end method

.method public getSuperType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->superType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public ifWildcardType(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public isWildcardType()Z
    .locals 1

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 149
    if-nez p1, :cond_0

    .line 150
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->extendedType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 152
    if-ne p1, v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->removeExtendedType()Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 154
    return v1

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->superType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-eqz v0, :cond_2

    .line 158
    if-ne p1, v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->removeSuperType()Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 160
    return v1

    .line 163
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeExtendedType()Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .locals 2

    .line 176
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setExtendedType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public removeSuperType()Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .locals 2

    .line 181
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setSuperType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
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

    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->extendedType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 202
    if-ne p1, v0, :cond_1

    .line 203
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setExtendedType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 204
    return v1

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->superType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-eqz v0, :cond_2

    .line 208
    if-ne p1, v0, :cond_2

    .line 209
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setSuperType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 210
    return v1

    .line 213
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 2

    .line 246
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->toResolvedType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedWildcard;

    return-object v0
.end method

.method public bridge synthetic setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;"
        }
    .end annotation

    .line 143
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    return-object v0
.end method

.method public setExtendedType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .locals 2
    .param p1, "extendedType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extendedType"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->extendedType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-ne p1, v0, :cond_0

    .line 112
    return-object p0

    .line 114
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXTENDED_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->extendedType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->extendedType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-eqz v0, :cond_1

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 117
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->extendedType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 118
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 119
    return-object p0
.end method

.method public setSuperType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .locals 2
    .param p1, "superType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "superType"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->superType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-ne p1, v0, :cond_0

    .line 131
    return-object p0

    .line 133
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SUPER_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->superType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->superType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-eqz v0, :cond_1

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 136
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->superType:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 137
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 138
    return-object p0
.end method

.method public toWildcardType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
