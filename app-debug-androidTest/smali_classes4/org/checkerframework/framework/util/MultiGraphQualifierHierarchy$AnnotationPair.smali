.class Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;
.super Ljava/lang/Object;
.source "MultiGraphQualifierHierarchy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnotationPair"
.end annotation


# instance fields
.field public final a1:Ljavax/lang/model/element/AnnotationMirror;

.field public final a2:Ljavax/lang/model/element/AnnotationMirror;

.field private hashCode:I


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 1
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->hashCode:I

    .line 923
    iput-object p1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a1:Ljavax/lang/model/element/AnnotationMirror;

    .line 924
    iput-object p2, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a2:Ljavax/lang/model/element/AnnotationMirror;

    .line 925
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 941
    instance-of v0, p1, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 942
    return v1

    .line 944
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;

    .line 945
    .local v0, "other":Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;
    iget-object v2, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a1:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v3, v0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a1:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a2:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v4, v0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a2:Ljavax/lang/model/element/AnnotationMirror;

    .line 946
    invoke-static {v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 947
    return v3

    .line 949
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a2:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v4, v0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a1:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a1:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v4, v0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a2:Ljavax/lang/model/element/AnnotationMirror;

    .line 950
    invoke-static {v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 951
    return v3

    .line 953
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 930
    iget v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->hashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a1:Ljavax/lang/model/element/AnnotationMirror;

    .line 933
    invoke-static {v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a2:Ljavax/lang/model/element/AnnotationMirror;

    .line 934
    invoke-static {v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 932
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->hashCode:I

    .line 936
    :cond_0
    iget v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnnotationPair("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a1:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;->a2:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
