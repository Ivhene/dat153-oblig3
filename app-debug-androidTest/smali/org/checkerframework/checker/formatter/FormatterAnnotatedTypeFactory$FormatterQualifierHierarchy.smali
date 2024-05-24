.class Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;
.super Lorg/checkerframework/framework/util/GraphQualifierHierarchy;
.source "FormatterAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FormatterQualifierHierarchy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-class v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;
    .param p2, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 100
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    .line 101
    iget-object v0, p1, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 102
    return-void
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 7
    .param p1, "anno1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "anno2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 197
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->UNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    return-object p2

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->UNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    return-object p1

    .line 203
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 204
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    .line 206
    .local v0, "anno1ArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-virtual {v1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v1

    .line 211
    .local v1, "anno2ArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    array-length v2, v0

    .line 212
    .local v2, "length":I
    array-length v3, v1

    if-ge v3, v2, :cond_2

    .line 213
    array-length v2, v1

    .line 216
    :cond_2
    new-array v3, v2, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 218
    .local v3, "anno3ArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 219
    aget-object v5, v0, v4

    aget-object v6, v1, v4

    invoke-static {v5, v6}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->union(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v5

    aput-object v5, v3, v4

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->categoriesToFormatAnnotation([Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 223
    .end local v0    # "anno1ArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v1    # "anno2ArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v2    # "length":I
    .end local v3    # "anno3ArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 224
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 225
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 226
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 228
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 229
    return-object p1

    .line 232
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 234
    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 236
    invoke-virtual {v2, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->stringToInvalidFormatAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 226
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 240
    :cond_8
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 6
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 106
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 107
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    .line 109
    .local v0, "rhsArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-virtual {v1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v1

    .line 111
    .local v1, "lhsArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    .line 112
    return v4

    .line 115
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 116
    aget-object v3, v1, v2

    aget-object v5, v0, v2

    invoke-static {v3, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->isSubsetOf(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    return v4

    .line 115
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 122
    .end local v0    # "rhsArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v1    # "lhsArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 125
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 128
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 131
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 135
    :cond_7
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .param p1, "anno1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "anno2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 140
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    return-object p2

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    return-object p1

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 147
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 149
    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    .line 150
    .local v0, "shorterArgTypesList":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 151
    invoke-virtual {v1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v1

    .line 152
    .local v1, "longerArgTypesList":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_2

    .line 153
    move-object v2, v1

    .line 154
    .local v2, "temp":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    move-object v1, v0

    .line 155
    move-object v0, v2

    .line 162
    .end local v2    # "temp":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_2
    array-length v2, v1

    new-array v2, v2, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 165
    .local v2, "resultArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 166
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    .line 167
    invoke-static {v4, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v4

    aput-object v4, v2, v3

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "i":I
    :cond_3
    array-length v3, v0

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 171
    aget-object v4, v1, v3

    aput-object v4, v2, v3

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 173
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->categoriesToFormatAnnotation([Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 175
    .end local v0    # "shorterArgTypesList":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v1    # "longerArgTypesList":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v2    # "resultArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->INVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 176
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 177
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 178
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 180
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    return-object p1

    .line 184
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 186
    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 188
    invoke-virtual {v2, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->invalidFormatAnnotationToErrorMessage(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->stringToInvalidFormatAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 178
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_9
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterQualifierHierarchy;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->UNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method
