.class public Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;
.super Ljava/lang/Object;
.source "I18nFormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "I18nFormatCall"
.end annotation


# instance fields
.field private args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;"
        }
    .end annotation
.end field

.field private final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field private formatArg:Lcom/sun/source/tree/ExpressionTree;

.field private invalidMessage:Ljava/lang/String;

.field final synthetic this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

.field private final tree:Lcom/sun/source/tree/ExpressionTree;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 3
    .param p1, "this$0"    # Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;
    .param p2, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p3, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p4, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 244
    iput-object p1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->tree:Lcom/sun/source/tree/ExpressionTree;

    .line 246
    iput-object p4, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 247
    invoke-interface {p2}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "theargs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    .line 249
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 250
    .local v1, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p4, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v2

    .line 251
    .local v2, "methodAnno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-direct {p0, v0, v1, p3, v2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->initialCheck(Ljava/util/List;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 252
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;

    .line 231
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    return-object v0
.end method

.method private initialCheck(Ljava/util/List;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 10
    .param p2, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p4, "methodAnno"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            ")V"
        }
    .end annotation

    .line 268
    .local p1, "theargs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    const/4 v0, -0x1

    .line 269
    .local v0, "paramIndex":I
    const/4 v1, 0x0

    .line 270
    .local v1, "paramArg":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    const/4 v2, 0x0

    .line 271
    .local v2, "i":I
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 272
    .local v4, "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v5, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormatFor;

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 273
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    iput-object v3, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->formatArg:Lcom/sun/source/tree/ExpressionTree;

    .line 274
    iget-object v5, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v5, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 276
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->access$000(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v3

    const-class v5, Ljava/lang/String;

    if-eq v3, v5, :cond_0

    .line 278
    return-void

    .line 280
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    iget-object v3, v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 282
    invoke-virtual {v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getContext()Lorg/checkerframework/common/basetype/BaseTypeContext;

    move-result-object v3

    .line 281
    invoke-static {p3, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodUse(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v3

    .line 283
    .local v3, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    const-class v5, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormatFor;

    .line 285
    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    .line 284
    const-string v7, "value"

    const/4 v8, 0x0

    invoke-static {v5, v7, v6, v8}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 289
    .local v5, "formatforArg":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 291
    :try_start_0
    iget-object v6, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v7, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->tree:Lcom/sun/source/tree/ExpressionTree;

    .line 295
    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v6

    .line 292
    const/4 v7, 0x1

    invoke-static {v5, v3, v6, v7}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    move-object v1, v6

    .line 297
    iget-object v6, v3, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->arguments:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    goto :goto_1

    .line 298
    :catch_0
    move-exception v6

    .line 300
    .local v6, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    iget-object v7, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    iget-object v7, v7, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v8, v8, [Ljava/lang/Object;

    .line 301
    const-string v9, "i18nformat.invalid.formatfor"

    invoke-static {v9, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    iget-object v9, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->tree:Lcom/sun/source/tree/ExpressionTree;

    .line 300
    invoke-virtual {v7, v8, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 304
    .end local v6    # "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    :goto_1
    goto :goto_2

    .line 308
    .end local v3    # "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .end local v5    # "formatforArg":Ljava/lang/String;
    :cond_1
    nop

    .end local v4    # "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    add-int/lit8 v2, v2, 0x1

    .line 309
    goto :goto_0

    .line 311
    :cond_2
    :goto_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 312
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    .line 313
    .local v3, "param":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_3

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    goto :goto_3

    .line 316
    :cond_3
    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    .line 319
    .end local v3    # "param":Ljavax/lang/model/element/VariableElement;
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final getFormatCategories()[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .locals 2

    .line 433
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormat;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 434
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v1

    return-object v1
.end method

.method public getFormatType()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->isValidFormatForInvocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormat;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NFORMAT:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    .local v0, "type":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    goto :goto_0

    .line 326
    .end local v0    # "type":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormatFor;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NFORMATFOR:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    .restart local v0    # "type":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    goto :goto_0

    .line 329
    .end local v0    # "type":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    :cond_1
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NINVALID:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    .line 330
    .restart local v0    # "type":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    const-string v1, "(is a @I18nFormat annotation missing?)"

    iput-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->invalidMessage:Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const-class v2, Lorg/checkerframework/checker/i18nformatter/qual/I18nInvalidFormat;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 332
    .local v1, "inv":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_2

    .line 333
    const-class v2, Ljava/lang/String;

    .line 334
    const-string v3, "value"

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->invalidMessage:Ljava/lang/String;

    .line 336
    .end local v1    # "inv":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_0

    .line 340
    .end local v0    # "type":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    :cond_3
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NFORMATFOR:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    .line 342
    .restart local v0    # "type":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    :goto_0
    new-instance v1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->formatArg:Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    return-object v1
.end method

.method public final getInvalidError()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->invalidMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidInvocationType()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    sget-object v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NFORMATFOR:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->formatArg:Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    return-object v0
.end method

.method public final getInvocationType()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;",
            ">;"
        }
    .end annotation

    .line 359
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->VARARG:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    .line 361
    .local v0, "type":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 362
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 363
    .local v1, "first":Lcom/sun/source/tree/ExpressionTree;
    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 365
    .local v2, "argType":Ljavax/lang/model/type/TypeMirror;
    new-instance v4, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1;

    invoke-direct {v4, p0, v1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1;-><init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;Lcom/sun/source/tree/ExpressionTree;)V

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 366
    invoke-interface {v2, v4, v5}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    .line 416
    .end local v1    # "first":Lcom/sun/source/tree/ExpressionTree;
    .end local v2    # "argType":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->tree:Lcom/sun/source/tree/ExpressionTree;

    check-cast v1, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 417
    .local v1, "loc":Lcom/sun/source/tree/ExpressionTree;
    sget-object v2, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->VARARG:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 420
    :cond_1
    new-instance v2, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    invoke-direct {v2, v0, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    return-object v2
.end method

.method public final getParamTypes()[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    .line 441
    .local v0, "res":[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 442
    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 443
    .local v2, "arg":Lcom/sun/source/tree/ExpressionTree;
    iget-object v3, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 444
    .local v3, "argType":Ljavax/lang/model/type/TypeMirror;
    new-instance v4, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    invoke-direct {v4, v3, v2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    aput-object v4, v0, v1

    .line 441
    .end local v2    # "arg":Lcom/sun/source/tree/ExpressionTree;
    .end local v3    # "argType":Ljavax/lang/model/type/TypeMirror;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public isValidFormatForInvocation()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->args:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidParameter(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 7
    .param p1, "formatCat"    # Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .param p2, "paramType"    # Ljavax/lang/model/type/TypeMirror;

    .line 450
    invoke-static {p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->access$000(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v0

    .line 451
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 453
    return v1

    .line 455
    :cond_0
    iget-object v2, p1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 456
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 457
    const/4 v1, 0x1

    return v1

    .line 455
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 460
    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->tree:Lcom/sun/source/tree/ExpressionTree;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
