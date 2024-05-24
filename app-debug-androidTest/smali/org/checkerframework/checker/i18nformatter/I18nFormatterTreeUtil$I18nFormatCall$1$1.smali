.class Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1$1;
.super Lcom/sun/source/util/SimpleTreeVisitor;
.source "I18nFormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/SimpleTreeVisitor<",
        "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;",
        "Ljava/lang/Class<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1;

    .line 381
    iput-object p1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1$1;->this$2:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1;

    invoke-direct {p0}, Lcom/sun/source/util/SimpleTreeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 381
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1$1;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;"
        }
    .end annotation

    .line 386
    .local p2, "p":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->ARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 381
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1$1;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TypeCastTree;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;"
        }
    .end annotation

    .line 399
    .local p2, "p":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1$1;->this$2:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall$1;->this$1:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;

    .line 393
    invoke-static {v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->access$100(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    move-result-object v0

    .line 396
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 398
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 400
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->NULLARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    goto :goto_0

    .line 401
    :cond_0
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->ARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    .line 393
    :goto_0
    return-object v0
.end method
