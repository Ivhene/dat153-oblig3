.class Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "I18nFormatterAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "I18nFormatterTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 184
    iput-object p1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterTreeAnnotator;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    .line 185
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 186
    return-void
.end method


# virtual methods
.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 183
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterTreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 190
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterTreeAnnotator;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "format":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->CHAR_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_1

    .line 195
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 200
    nop

    .line 201
    :try_start_0
    invoke-static {v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v1

    .line 202
    .local v1, "cs":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterTreeAnnotator;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 204
    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->categoriesToFormatAnnotation([Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 209
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 205
    .end local v1    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterTreeAnnotator;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 208
    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->exceptionToInvalidFormatAnnotation(Ljava/lang/IllegalArgumentException;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    move-object v1, v2

    .line 210
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 214
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
