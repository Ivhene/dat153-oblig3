.class public abstract Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
.super Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
.source "CallableDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<",
        "*>;>",
        "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithDeclaration;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeParameters<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

.field private parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private receiverParameter:Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation
.end field

.field private typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0i6vdZSg2S059Xxe3enEOB2P_Kg(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->stripGenerics(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2tgRs3Wlujsw6UzO5ik_tAOb4YI(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getTypeWithVarargsAsArray(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fTo8vrYuZZN6345kf02b9BxSSX0(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->stripAnnotations(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p5, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p8, "receiverParameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "modifiers",
            "annotations",
            "typeParameters",
            "name",
            "parameters",
            "thrownExceptions",
            "receiverParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
            ")V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    .local p2, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p4, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    .local p6, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    .local p7, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 78
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 79
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 80
    invoke-virtual {p0, p5}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 81
    invoke-virtual {p0, p6}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 82
    invoke-virtual {p0, p7}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 83
    invoke-virtual {p0, p8}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setReceiverParameter(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 84
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->customInitialization()V

    .line 85
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 9
    .param p4, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p7, "receiverParameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "annotations",
            "typeParameters",
            "name",
            "parameters",
            "thrownExceptions",
            "receiverParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 69
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p3, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    .local p5, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    .local p6, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    .line 70
    return-void
.end method

.method private getTypeWithVarargsAsArray(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 3
    .param p1, "p"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 325
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    .line 326
    .local v0, "t":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;[Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)V

    move-object v0, v1

    .line 329
    :cond_0
    return-object v0
.end method

.method private stripAnnotations(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    if-eqz v0, :cond_0

    .line 309
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    invoke-interface {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 311
    :cond_0
    return-object p1
.end method

.method private stripGenerics(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    if-eqz v0, :cond_0

    .line 316
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-interface {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 318
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected appendThrowsIfRequested(Z)Ljava/lang/String;
    .locals 5
    .param p1, "includingThrows"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "includingThrows"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 196
    const/4 v1, 0x1

    .line 197
    .local v1, "firstThrow":Z
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 198
    .local v3, "thr":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x0

    .line 200
    const-string v4, " throws "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 202
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :goto_1
    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->prettyPrinterNoCommentsConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->toString(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .end local v3    # "thr":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    goto :goto_0

    .line 207
    .end local v1    # "firstThrow":Z
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public asCallableDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 0

    .line 395
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<",
            "*>;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CallableDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CallableDeclarationMetaModel;
    .locals 1

    .line 341
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->callableDeclarationMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/CallableDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CallableDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1

    .line 115
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getReceiverParameter()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
            ">;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;
    .locals 4

    .line 304
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$1;)V

    return-object v0
.end method

.method public getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifCallableDeclaration(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public isCallableDeclaration()Z
    .locals 1

    .line 389
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    if-nez p1, :cond_0

    .line 214
    const/4 v0, 0x0

    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 216
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 217
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 218
    return v2

    .line 215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 222
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 223
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 224
    return v2

    .line 221
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    if-eqz v0, :cond_5

    .line 228
    if-ne p1, v0, :cond_5

    .line 229
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->removeReceiverParameter()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 230
    return v2

    .line 233
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 234
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 235
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 236
    return v2

    .line 233
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 239
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 240
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_8

    .line 241
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 242
    return v2

    .line 239
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 245
    .end local v0    # "i":I
    :cond_9
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeReceiverParameter()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 2

    .line 424
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setReceiverParameter(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 4
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

    .line 347
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    if-nez p1, :cond_0

    .line 348
    const/4 v0, 0x0

    return v0

    .line 349
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 350
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 351
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 352
    return v2

    .line 349
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_3

    .line 356
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 357
    return v2

    .line 359
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 360
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 361
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 362
    return v2

    .line 359
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    if-eqz v0, :cond_6

    .line 366
    if-ne p1, v0, :cond_6

    .line 367
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setReceiverParameter(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 368
    return v2

    .line 371
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 372
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 373
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 374
    return v2

    .line 371
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 377
    .end local v0    # "i":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 378
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_9

    .line 379
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 380
    return v2

    .line 377
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 383
    .end local v0    # "i":I
    :cond_a
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;)TT;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 103
    return-object p0

    .line 105
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 108
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 109
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 110
    return-object p0
.end method

.method public bridge synthetic setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            ")TT;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    .line 123
    return-object p0

    .line 125
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 128
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 129
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 130
    return-object p0
.end method

.method public bridge synthetic setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;)TT;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    .local p1, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 143
    return-object p0

    .line 145
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 148
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 149
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 150
    return-object p0
.end method

.method public setReceiverParameter(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .param p1, "receiverParameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "receiverParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
            ")TT;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    if-ne p1, v0, :cond_0

    .line 412
    return-object p0

    .line 414
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RECEIVER_PARAMETER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    if-eqz v0, :cond_1

    .line 416
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 417
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->receiverParameter:Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 418
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 419
    return-object p0
.end method

.method public bridge synthetic setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "thrownExceptions"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thrownExceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;)TT;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    .local p1, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 163
    return-object p0

    .line 165
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THROWN_EXCEPTIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 168
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->thrownExceptions:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 169
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 170
    return-object p0
.end method

.method public bridge synthetic setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;)TT;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    .local p1, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 183
    return-object p0

    .line 185
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 188
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->typeParameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 189
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 190
    return-object p0
.end method

.method public toCallableDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;",
            ">;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<TT;>;"
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
