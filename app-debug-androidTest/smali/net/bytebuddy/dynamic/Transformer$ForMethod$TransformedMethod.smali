.class public Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;
.super Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;
.source "Transformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer$ForMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TransformedMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;,
        Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;,
        Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameterList;
    }
.end annotation


# instance fields
.field private final declaringType:Lnet/bytebuddy/description/type/TypeDefinition;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final token:Lnet/bytebuddy/description/method/MethodDescription$Token;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/method/MethodDescription$Token;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "declaringType"    # Lnet/bytebuddy/description/type/TypeDefinition;
    .param p3, "token"    # Lnet/bytebuddy/description/method/MethodDescription$Token;
    .param p4, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 374
    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;-><init>()V

    .line 375
    iput-object p1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 376
    iput-object p2, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->declaringType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 377
    iput-object p3, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    .line 378
    iput-object p4, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 379
    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)Lnet/bytebuddy/description/method/MethodDescription$Token;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    .line 341
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    return-object v0
.end method

.method static synthetic access$100(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    .line 341
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$200(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    .line 341
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    .line 341
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->asDefined()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 448
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 413
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 427
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->declaringType:Lnet/bytebuddy/description/type/TypeDefinition;

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 3

    .line 406
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;

    invoke-direct {v2, p0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;-><init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes;-><init>(Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 434
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getParameters()Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "*>;"
        }
    .end annotation

    .line 399
    new-instance v0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameterList;

    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameterList;-><init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)V

    return-object v0
.end method

.method public getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 455
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 456
    .local v0, "receiverType":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    if-nez v0, :cond_0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;

    invoke-direct {v1, p0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;-><init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)V

    .line 458
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 456
    :goto_0
    return-object v1
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 392
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;

    invoke-direct {v1, p0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;-><init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 3

    .line 385
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->token:Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;

    invoke-direct {v2, p0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;-><init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)V

    invoke-direct {v0, p0, v1, v2}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;-><init>(Lnet/bytebuddy/description/TypeVariableSource;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method
