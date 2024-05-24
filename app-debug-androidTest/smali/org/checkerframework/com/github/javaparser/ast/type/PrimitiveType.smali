.class public Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
.super Lorg/checkerframework/com/github/javaparser/ast/type/Type;
.source "PrimitiveType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;",
        ">;"
    }
.end annotation


# static fields
.field static final unboxMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private type:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->unboxMap:Ljava/util/HashMap;

    .line 117
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->values()[Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 118
    .local v3, "unboxedType":Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->unboxMap:Ljava/util/HashMap;

    iget-object v5, v3, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->nameOfBoxedType:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v3    # "unboxedType":Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 125
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->INT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "type",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 143
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    .line 144
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->customInitialization()V

    .line 145
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "type",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 134
    .local p2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 135
    return-void
.end method

.method public static booleanType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 54
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->BOOLEAN:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static byteType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 62
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->BYTE:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static charType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 58
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->CHAR:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static doubleType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 82
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->DOUBLE:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static floatType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 78
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->FLOAT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static intType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 70
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->INT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static longType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 74
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->LONG:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0
.end method

.method public static shortType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 66
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->SHORT:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)V

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

    .line 150
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 156
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public asPrimitiveType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 0

    .line 226
    return-object p0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->type:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->asString()Ljava/lang/String;

    move-result-object v0

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
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2

    .line 200
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/PrimitiveTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/PrimitiveTypeMetaModel;
    .locals 1

    .line 206
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->primitiveTypeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/PrimitiveTypeMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TypeMetaModel;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/PrimitiveTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->type:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    return-object v0
.end method

.method public ifPrimitiveType(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public isPrimitiveType()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

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

    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 212
    if-nez p1, :cond_0

    .line 213
    const/4 v0, 0x0

    return v0

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 2

    .line 236
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->toResolvedType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-object v0
.end method

.method public bridge synthetic resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

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

    .line 51
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
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
            "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;"
        }
    .end annotation

    .line 186
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    return-object v0
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

    .line 51
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;)Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->type:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    if-ne p1, v0, :cond_0

    .line 172
    return-object p0

    .line 174
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->type:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->type:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    .line 176
    return-object p0
.end method

.method public toBoxedType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->type:Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->toBoxedType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public toPrimitiveType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
