.class public Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;
.super Ljava/lang/Object;
.source "I18nFormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;,
        Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;,
        Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    }
.end annotation


# static fields
.field private static typeMirrorToClassVisitor:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;


# instance fields
.field public final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field public final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 516
    new-instance v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;-><init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$1;)V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->typeMirrorToClassVisitor:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 63
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 64
    return-void
.end method

.method static synthetic access$000(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljavax/lang/model/type/TypeMirror;

    .line 57
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->typeMirrorToClass(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private asFormatCallCategoriesLowLevel(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .locals 8
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    .line 168
    .local v0, "vararg":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v1, v0, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 169
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getInitializers()Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "convs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 171
    .local v3, "res":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 172
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 173
    .local v5, "conv":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v6, v5, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    if-eqz v6, :cond_0

    .line 174
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->typeMirrorToClass(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne v6, v7, :cond_0

    .line 176
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 178
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-static {v6}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v6

    aput-object v6, v3, v4

    .line 179
    nop

    .line 171
    .end local v5    # "conv":Lorg/checkerframework/dataflow/cfg/node/Node;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    .restart local v5    # "conv":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    return-object v2

    .line 184
    .end local v4    # "i":I
    .end local v5    # "conv":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_1
    return-object v3

    .line 186
    .end local v1    # "convs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v3    # "res":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_2
    return-object v2
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

    .line 526
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->typeMirrorToClassVisitor:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public categoriesToFormatAnnotation([Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "args"    # [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 107
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormat;

    .line 108
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 109
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Enum;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 110
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createFormatForCall(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;)Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p3, "atypeFactory"    # Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    .line 215
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 216
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p3, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v1

    .line 217
    .local v1, "methodAnno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 219
    .local v3, "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v4, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormatFor;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 220
    new-instance v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;

    iget-object v4, p3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v4, p1, p2, p3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;-><init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v2

    .line 222
    .end local v3    # "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 223
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public exceptionToInvalidFormatAnnotation(Ljava/lang/IllegalArgumentException;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "ex"    # Ljava/lang/IllegalArgumentException;

    .line 79
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->stringToInvalidFormatAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

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

    .line 156
    .local p1, "res":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 157
    invoke-static {p2, p3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    iget-object v2, p1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->location:Lcom/sun/source/tree/ExpressionTree;

    .line 156
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .locals 3
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 118
    const-class v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 119
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueEnumArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;>;"
    new-array v1, v2, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object v1
.end method

.method public getHasFormatCallCategories(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            ")",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "[",
            "Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    invoke-direct {p0, p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->asFormatCallCategoriesLowLevel(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    return-object v0
.end method

.method public invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 5
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 99
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

.method public isHasFormatCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 129
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 130
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nChecksFormat;

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 131
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isIsFormatCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 139
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 140
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nValidFormat;

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 141
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isMakeFormatCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 149
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 150
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nMakeFormat;

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 151
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public makeFormatCallCategories(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
    .locals 8
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "atypeFactory"    # Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "[",
            "Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->translations:Ljava/util/Map;

    .line 196
    .local v0, "translations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 197
    .local v1, "firstParam":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v2, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    .line 200
    .local v2, "ret":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;>;"
    instance-of v3, v1, Lorg/checkerframework/dataflow/cfg/node/StringLiteralNode;

    if-eqz v3, :cond_0

    .line 201
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/StringLiteralNode;

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/StringLiteralNode;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "s":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 204
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    invoke-static {v4}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v6

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    move-object v2, v5

    .line 207
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method stringToInvalidFormatAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "invalidFormatString"    # Ljava/lang/String;

    .line 88
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/i18nformatter/qual/I18nInvalidFormat;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 90
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 91
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

    .line 162
    .local p1, "res":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 163
    invoke-static {p2, p3}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    iget-object v2, p1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->location:Lcom/sun/source/tree/ExpressionTree;

    .line 162
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 164
    return-void
.end method
