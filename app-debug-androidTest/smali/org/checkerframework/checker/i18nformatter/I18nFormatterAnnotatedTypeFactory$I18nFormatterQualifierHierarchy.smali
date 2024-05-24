.class Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;
.super Lorg/checkerframework/framework/util/GraphQualifierHierarchy;
.source "I18nFormatterAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "I18nFormatterQualifierHierarchy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 218
    const-class v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;
    .param p2, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 220
    iput-object p1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    .line 221
    iget-object v0, p1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 222
    return-void
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 7
    .param p1, "anno1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "anno2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 341
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NUNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    return-object p2

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NUNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    return-object p1

    .line 347
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 348
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 349
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 350
    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v0

    .line 351
    .local v0, "anno1ArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 352
    invoke-virtual {v1, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v1

    .line 357
    .local v1, "anno2ArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    array-length v2, v0

    .line 358
    .local v2, "length":I
    array-length v3, v1

    if-ge v3, v2, :cond_2

    .line 359
    array-length v2, v1

    .line 362
    :cond_2
    new-array v3, v2, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 364
    .local v3, "anno3ArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 365
    aget-object v5, v0, v4

    aget-object v6, v1, v4

    .line 366
    invoke-static {v5, v6}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->union(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v5

    aput-object v5, v3, v4

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 368
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->categoriesToFormatAnnotation([Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 370
    .end local v0    # "anno1ArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .end local v1    # "anno2ArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .end local v2    # "length":I
    .end local v3    # "anno3ArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 371
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 372
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 373
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 375
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    return-object p1

    .line 379
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 381
    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 383
    invoke-virtual {v2, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->stringToInvalidFormatAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 373
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 372
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 387
    :cond_8
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 388
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 389
    return-object p1

    .line 392
    :cond_9
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 7
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 226
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 227
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 230
    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v0

    .line 231
    .local v0, "rhsArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 232
    invoke-virtual {v2, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v2

    .line 234
    .local v2, "lhsArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    array-length v3, v0

    array-length v4, v2

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    .line 235
    return v5

    .line 238
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 239
    aget-object v4, v2, v3

    aget-object v6, v0, v3

    invoke-static {v4, v6}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->isSubsetOf(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    return v5

    .line 238
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    .end local v3    # "i":I
    :cond_2
    return v1

    .line 246
    .end local v0    # "rhsArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .end local v2    # "lhsArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 247
    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    const-class v0, Ljava/lang/String;

    const-string v2, "value"

    invoke-static {p1, v2, v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    .line 250
    invoke-static {p2, v2, v3, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 248
    return v0

    .line 254
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 257
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 260
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 261
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 263
    :cond_7
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 264
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 266
    :cond_8
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 267
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 269
    :cond_9
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 270
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 273
    :cond_a
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .param p1, "anno1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "anno2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 278
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    return-object p2

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    return-object p1

    .line 284
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 285
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 287
    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v0

    .line 288
    .local v0, "shorterArgTypesList":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 289
    invoke-virtual {v1, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v1

    .line 290
    .local v1, "longerArgTypesList":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_2

    .line 291
    move-object v2, v1

    .line 292
    .local v2, "temp":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    move-object v1, v0

    .line 293
    move-object v0, v2

    .line 300
    .end local v2    # "temp":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_2
    array-length v2, v1

    new-array v2, v2, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 303
    .local v2, "resultArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 304
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    .line 305
    invoke-static {v4, v5}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->intersect(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v4

    aput-object v4, v2, v3

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    .end local v3    # "i":I
    :cond_3
    array-length v3, v0

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 309
    aget-object v4, v1, v3

    aput-object v4, v2, v3

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->categoriesToFormatAnnotation([Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 313
    .end local v0    # "shorterArgTypesList":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .end local v1    # "longerArgTypesList":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .end local v2    # "resultArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 314
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 315
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 316
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 318
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 319
    return-object p1

    .line 322
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 324
    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 326
    invoke-virtual {v2, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->stringToInvalidFormatAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 316
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 315
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 331
    :cond_9
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 332
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 333
    return-object p1

    .line 336
    :cond_a
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NUNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method
