.class public Lorg/checkerframework/checker/formatter/FormatterTreeUtil;
.super Ljava/lang/Object;
.source "FormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;,
        Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;,
        Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;,
        Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    }
.end annotation


# static fields
.field private static typeMirrorToClassVisitor:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;


# instance fields
.field public final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field public final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 469
    new-instance v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;-><init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$1;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->typeMirrorToClassVisitor:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 53
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 62
    return-void
.end method

.method static synthetic access$100(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljavax/lang/model/type/TypeMirror;

    .line 45
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->typeMirrorToClass(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private asFormatCallCategoriesLowLevel(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 8
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    .line 134
    .local v0, "vararg":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v1, v0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 135
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getInitializers()Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "convs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 137
    .local v3, "res":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 138
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 139
    .local v5, "conv":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v6, v5, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    if-eqz v6, :cond_0

    .line 140
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 141
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->typeMirrorToClass(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v6

    .line 142
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-class v7, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne v6, v7, :cond_0

    .line 143
    move-object v7, v5

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 144
    invoke-virtual {v7}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v7

    aput-object v7, v3, v4

    .line 145
    nop

    .line 137
    .end local v5    # "conv":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    .restart local v5    # "conv":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    return-object v2

    .line 150
    .end local v4    # "i":I
    .end local v5    # "conv":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_1
    return-object v3

    .line 152
    .end local v1    # "convs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v3    # "res":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_2
    return-object v2
.end method

.method public static isLocale(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z
    .locals 2
    .param p0, "e"    # Lcom/sun/source/tree/ExpressionTree;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 169
    invoke-virtual {p1, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->typeMirrorToClass(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Locale;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final typeMirrorToClass(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 479
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->typeMirrorToClassVisitor:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public asFormatCallCategories(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            ")",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "[",
            "Lorg/checkerframework/checker/formatter/qual/ConversionCategory;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    invoke-direct {p0, p1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->asFormatCallCategoriesLowLevel(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    return-object v0
.end method

.method public categoriesToFormatAnnotation([Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "args"    # [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 400
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/formatter/qual/Format;

    .line 401
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 402
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Enum;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 403
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public exceptionToInvalidFormatAnnotation(Ljava/util/IllegalFormatException;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "ex"    # Ljava/util/IllegalFormatException;

    .line 372
    invoke-virtual {p1}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->stringToInvalidFormatAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public final varargs failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "TE;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 356
    .local p1, "res":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 357
    invoke-static {p2, p3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    iget-object v2, p1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->location:Lcom/sun/source/tree/ExpressionTree;

    .line 356
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method public formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 3
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 411
    const-class v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 412
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueEnumArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 414
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/checker/formatter/qual/ConversionCategory;>;"
    new-array v1, v2, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v1
.end method

.method public invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 5
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "value"

    invoke-static {p1, v4, v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAsFormatCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 127
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 128
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    const-class v1, Lorg/checkerframework/checker/formatter/qual/ReturnsFormat;

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 129
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isFormatCall(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 162
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 163
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    const-class v1, Lorg/checkerframework/checker/formatter/qual/FormatMethod;

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 164
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method stringToInvalidFormatAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "invalidFormatString"    # Ljava/lang/String;

    .line 381
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/formatter/qual/InvalidFormat;

    .line 382
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 383
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 384
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public final varargs warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "TE;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 362
    .local p1, "res":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 363
    invoke-static {p2, p3}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    iget-object v2, p1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->location:Lcom/sun/source/tree/ExpressionTree;

    .line 362
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 364
    return-void
.end method
