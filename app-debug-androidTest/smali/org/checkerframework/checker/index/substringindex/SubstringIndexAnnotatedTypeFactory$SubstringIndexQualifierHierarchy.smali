.class final Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "SubstringIndexAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubstringIndexQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 0
    .param p2, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 83
    iput-object p1, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    .line 84
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    .line 85
    return-void
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 89
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    return-object p2

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    return-object p1

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    return-object p1

    .line 98
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    return-object p2

    .line 101
    :cond_3
    invoke-static {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 102
    .local v0, "ubq1":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 103
    .local v1, "ubq2":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 104
    .local v2, "glb":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v3, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 129
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/SubstringIndexUnknown;

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 130
    return v1

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/index/qual/SubstringIndexBottom;

    invoke-virtual {v0, p1, v2}, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    return v1

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/SubstringIndexUnknown;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 136
    return v1

    .line 138
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/index/qual/SubstringIndexBottom;

    invoke-virtual {v0, p2, v2}, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    return v1

    .line 142
    :cond_3
    invoke-static {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 143
    .local v0, "subtype":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 144
    .local v1, "supertype":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isSubtype(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Z

    move-result v2

    return v2
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 109
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-object p1

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    return-object p2

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    return-object p2

    .line 118
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    return-object p1

    .line 121
    :cond_3
    invoke-static {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 122
    .local v0, "ubq1":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 123
    .local v1, "ubq2":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->lub(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 124
    .local v2, "lub":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v3, p0, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory$SubstringIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method
