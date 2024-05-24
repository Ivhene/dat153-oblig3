.class Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory$GeneralQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "TypeOutputtingChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/debug/TypeOutputtingChecker$GeneralAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeneralQualifierHierarchy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 185
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    .line 186
    return-void
.end method


# virtual methods
.method public findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p2, "annotationMirror"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 211
    .local p1, "annotations":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 0
    .param p1, "start"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 203
    return-object p1
.end method

.method public getBottomAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getPolymorphicAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "start"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 302
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.getPolymorphicAnnotation() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 0
    .param p1, "start"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 197
    return-object p1
.end method

.method public getTopAnnotations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy:getTopAnnotations() shouldn\'t be called"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeQualifiers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.getTypeQualifiers() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 288
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.greatestLowerBound() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greatestLowerBoundTypeVariable(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 296
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.greatestLowerBoundTypeVariable() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 258
    .local p1, "rhs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p2, "lhs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.isSubtype() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 242
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.isSubtype() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSubtypeTypeVariable(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 266
    .local p1, "subAnnos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p2, "superAnnos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.isSubtypeTypeVariable() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSubtypeTypeVariable(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 249
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.isSubtypeTypeVariable() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValid()Z
    .locals 1

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 273
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.leastUpperBound() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public leastUpperBoundTypeVariable(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 281
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "GeneralQualifierHierarchy.leastUpperBoundTypeVariable() shouldn\'t be called."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method
