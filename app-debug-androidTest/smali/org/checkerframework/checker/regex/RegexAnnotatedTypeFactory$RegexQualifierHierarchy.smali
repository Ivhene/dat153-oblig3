.class final Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;
.super Lorg/checkerframework/framework/util/GraphQualifierHierarchy;
.source "RegexAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegexQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 0
    .param p2, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    .param p3, "bottom"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 168
    iput-object p1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 169
    invoke-direct {p0, p2, p3}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 170
    return-void
.end method

.method private getRegexValue(Ljavax/lang/model/element/AnnotationMirror;)I
    .locals 2
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 199
    nop

    .line 200
    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->regexValueElement:Ljavax/lang/model/element/ExecutableElement;

    .line 201
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    .line 202
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 174
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    .line 175
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->getRegexValue(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v0

    .line 177
    .local v0, "rhsValue":I
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->getRegexValue(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v1

    .line 178
    .local v1, "lhsValue":I
    if-gt v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 182
    .end local v0    # "rhsValue":I
    .end local v1    # "lhsValue":I
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    .line 185
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    .line 188
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->PARTIALREGEX:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->PARTIALREGEX:Ljavax/lang/model/element/AnnotationMirror;

    .line 191
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->PARTIALREGEX:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->PARTIALREGEX:Ljavax/lang/model/element/AnnotationMirror;

    .line 194
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method
