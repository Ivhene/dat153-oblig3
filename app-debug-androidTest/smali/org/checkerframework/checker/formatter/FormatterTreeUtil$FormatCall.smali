.class public Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;
.super Ljava/lang/Object;
.source "FormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatterTreeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FormatCall"
.end annotation


# instance fields
.field private final args:Ljava/util/List;
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

.field private final formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field private final formatArg:Lcom/sun/source/tree/ExpressionTree;

.field final node:Lcom/sun/source/tree/MethodInvocationTree;

.field final synthetic this$0:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 4
    .param p1, "this$0"    # Lorg/checkerframework/checker/formatter/FormatterTreeUtil;
    .param p2, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p3, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 181
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->this$0:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->node:Lcom/sun/source/tree/MethodInvocationTree;

    .line 185
    iput-object p3, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 188
    invoke-interface {p2}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "theargs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v2, p3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->isLocale(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 195
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    iput-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->formatArg:Lcom/sun/source/tree/ExpressionTree;

    .line 196
    invoke-virtual {p3, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->args:Ljava/util/List;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;

    .line 174
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    return-object v0
.end method


# virtual methods
.method public final getFormatCategories()[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 2

    .line 291
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const-class v1, Lorg/checkerframework/checker/formatter/qual/Format;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 292
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->this$0:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v1

    return-object v1
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

    .line 222
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->VARARG:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    .line 224
    .local v0, "type":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 225
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->args:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 226
    .local v1, "first":Lcom/sun/source/tree/ExpressionTree;
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 228
    .local v2, "argType":Ljavax/lang/model/type/TypeMirror;
    new-instance v4, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;

    invoke-direct {v4, p0, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;-><init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;Lcom/sun/source/tree/ExpressionTree;)V

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 229
    invoke-interface {v2, v4, v5}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    .line 278
    .end local v1    # "first":Lcom/sun/source/tree/ExpressionTree;
    .end local v2    # "argType":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->node:Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 279
    .local v1, "loc":Lcom/sun/source/tree/ExpressionTree;
    sget-object v2, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->VARARG:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->args:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->args:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 282
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

    .line 303
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->args:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    .line 304
    .local v0, "res":[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 305
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->args:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 306
    .local v2, "arg":Lcom/sun/source/tree/ExpressionTree;
    iget-object v3, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 307
    .local v3, "argType":Ljavax/lang/model/type/TypeMirror;
    new-instance v4, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    invoke-direct {v4, v3, v2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    aput-object v4, v0, v1

    .line 304
    .end local v2    # "arg":Lcom/sun/source/tree/ExpressionTree;
    .end local v3    # "argType":Ljavax/lang/model/type/TypeMirror;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final hasFormatAnnotation()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const-class v1, Lorg/checkerframework/checker/formatter/qual/Format;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    const-string v0, "(is a @Format annotation missing?)"

    .line 207
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->formatAnno:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const-class v2, Lorg/checkerframework/checker/formatter/qual/InvalidFormat;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 208
    .local v1, "inv":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_0

    .line 209
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->this$0:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_0
    new-instance v2, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    iget-object v3, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->formatArg:Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {v2, v0, v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;-><init>(Ljava/lang/Object;Lcom/sun/source/tree/ExpressionTree;)V

    return-object v2

    .line 213
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "inv":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isParameterNull(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 336
    new-instance v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$2;-><init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;)V

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isValidParameter(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 7
    .param p1, "formatCat"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p2, "paramType"    # Ljavax/lang/model/type/TypeMirror;

    .line 317
    invoke-static {p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->access$100(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v0

    .line 318
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 320
    return v1

    .line 322
    :cond_0
    iget-object v2, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 323
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    const/4 v1, 0x1

    return v1

    .line 322
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 327
    :cond_2
    return v1
.end method
