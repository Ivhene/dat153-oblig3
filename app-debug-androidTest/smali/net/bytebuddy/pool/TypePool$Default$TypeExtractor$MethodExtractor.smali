.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MethodExtractor"
.end annotation


# instance fields
.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation
.end field

.field private final descriptor:Ljava/lang/String;

.field private final exceptionName:[Ljava/lang/String;

.field private final exceptionTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private firstLabel:Lnet/bytebuddy/jar/asm/Label;

.field private final genericSignature:Ljava/lang/String;

.field private final internalName:Ljava/lang/String;

.field private invisibleParameterShift:I

.field private final legacyParameterBag:Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

.field private final modifiers:I

.field private final parameterAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parameterTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final receiverTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final returnTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

.field private final typeVariableAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final typeVariableBoundAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private visibleParameterShift:I


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$1"    # Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
    .param p2, "modifiers"    # I
    .param p3, "internalName"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "genericSignature"    # Ljava/lang/String;
    .param p6, "exceptionName"    # [Ljava/lang/String;

    .line 8514
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    .line 8515
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(I)V

    .line 8516
    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->modifiers:I

    .line 8517
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->internalName:Ljava/lang/String;

    .line 8518
    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    .line 8519
    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->genericSignature:Ljava/lang/String;

    .line 8520
    iput-object p6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionName:[Ljava/lang/String;

    .line 8521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    .line 8522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    .line 8523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->returnTypeAnnotationTokens:Ljava/util/Map;

    .line 8524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTypeAnnotationTokens:Ljava/util/Map;

    .line 8525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    .line 8526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->receiverTypeAnnotationTokens:Ljava/util/Map;

    .line 8527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->annotationTokens:Ljava/util/List;

    .line 8528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterAnnotationTokens:Ljava/util/Map;

    .line 8529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTokens:Ljava/util/List;

    .line 8530
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;-><init>([Lnet/bytebuddy/jar/asm/Type;)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->legacyParameterBag:Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

    .line 8531
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 8639
    return-void
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V
    .locals 0
    .param p1, "ignored"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)V"
        }
    .end annotation

    .line 8631
    .local p2, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue<**>;"
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 8632
    return-void
.end method

.method public visitAnnotableParameterCount(IZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "visible"    # Z

    .line 8588
    if-eqz p2, :cond_0

    .line 8589
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->visibleParameterShift:I

    goto :goto_0

    .line 8591
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->invisibleParameterShift:I

    .line 8593
    :goto_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 8583
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->annotationTokens:Ljava/util/List;

    new-instance v3, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v4, v4, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v3, v4, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v0
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    .line 8624
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForArrayType;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    invoke-direct {v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForArrayType;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0, v2}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 19

    .line 8643
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    invoke-static {v1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->access$4200(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;

    move-result-object v1

    new-instance v15, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;

    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->internalName:Ljava/lang/String;

    iget v4, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->modifiers:I

    iget-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->descriptor:Ljava/lang/String;

    iget-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->genericSignature:Ljava/lang/String;

    iget-object v7, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionName:[Ljava/lang/String;

    iget-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    iget-object v10, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->returnTypeAnnotationTokens:Ljava/util/Map;

    iget-object v11, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTypeAnnotationTokens:Ljava/util/Map;

    iget-object v12, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    iget-object v13, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->receiverTypeAnnotationTokens:Ljava/util/Map;

    iget-object v14, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->annotationTokens:Ljava/util/List;

    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterAnnotationTokens:Ljava/util/Map;

    move-object/from16 v16, v2

    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTokens:Ljava/util/List;

    .line 8656
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->legacyParameterBag:Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

    move-object/from16 v18, v1

    iget v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->modifiers:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8657
    :goto_0
    invoke-virtual {v2, v1}, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->resolve(Z)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTokens:Ljava/util/List;

    :goto_1
    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-object/from16 v17, v2

    move-object v2, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v17}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    .line 8643
    move-object/from16 v1, v18

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8660
    return-void
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1
    .param p1, "label"    # Lnet/bytebuddy/jar/asm/Label;

    .line 8605
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v0, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    iget-object v0, v0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v0}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->firstLabel:Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_0

    .line 8606
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->firstLabel:Lnet/bytebuddy/jar/asm/Label;

    .line 8608
    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lnet/bytebuddy/jar/asm/Label;
    .param p5, "end"    # Lnet/bytebuddy/jar/asm/Label;
    .param p6, "index"    # I

    .line 8612
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v0, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    iget-object v0, v0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v0}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->firstLabel:Lnet/bytebuddy/jar/asm/Label;

    if-ne p4, v0, :cond_0

    .line 8613
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->legacyParameterBag:Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;

    invoke-virtual {v0, p6, p1}, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->register(ILjava/lang/String;)V

    .line 8615
    :cond_0
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I

    .line 8619
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTokens:Ljava/util/List;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8620
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 7
    .param p1, "index"    # I
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 8597
    new-instance v6, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    if-eqz p3, :cond_0

    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->visibleParameterShift:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->invisibleParameterShift:I

    :goto_0
    add-int v3, p1, v0

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterAnnotationTokens:Ljava/util/Map;

    new-instance v5, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v0, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v5, v0, p2}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;ILjava/util/Map;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v6
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 8
    .param p1, "rawTypeReference"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 8536
    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    .line 8537
    .local v0, "typeReference":Lnet/bytebuddy/jar/asm/TypeReference;
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 8576
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type reference on method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8563
    :sswitch_0
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    .line 8565
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getExceptionIndex()I

    move-result v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {v1, p3, p2, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    .line 8567
    .local v1, "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    goto :goto_0

    .line 8557
    .end local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    :sswitch_1
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    .line 8559
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getFormalParameterIndex()I

    move-result v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->parameterTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {v1, p3, p2, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    .line 8561
    .restart local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    goto :goto_0

    .line 8569
    .end local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    :sswitch_2
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->receiverTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {v1, p3, p2, v2}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;Ljava/util/Map;)V

    .line 8572
    .restart local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    goto :goto_0

    .line 8552
    .end local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    :sswitch_3
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->returnTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {v1, p3, p2, v2}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;Ljava/util/Map;)V

    .line 8555
    .restart local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    goto :goto_0

    .line 8574
    .end local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    :sswitch_4
    const/4 v1, 0x0

    return-object v1

    .line 8545
    :sswitch_5
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;

    .line 8547
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterBoundIndex()I

    move-result v5

    .line 8548
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result v6

    iget-object v7, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    move-object v2, v1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;IILjava/util/Map;)V

    .line 8550
    .restart local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    goto :goto_0

    .line 8539
    .end local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    :sswitch_6
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    .line 8541
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    invoke-direct {v1, p3, p2, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    .line 8543
    .restart local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    nop

    .line 8578
    :goto_0
    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v4, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v5, v5, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v4, v5, p3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v4}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x12 -> :sswitch_5
        0x13 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method
