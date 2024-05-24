.class public Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;
.super Lorg/checkerframework/framework/util/GraphQualifierHierarchy;
.source "FenumAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FenumQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;
    .param p2, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 93
    iput-object p1, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;->this$0:Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    .line 94
    iget-object v0, p1, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM_BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 95
    return-void
.end method


# virtual methods
.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 99
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;->this$0:Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;->this$0:Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM:Ljavax/lang/model/element/AnnotationMirror;

    .line 100
    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p2, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;->this$0:Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;->this$0:Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM:Ljavax/lang/model/element/AnnotationMirror;

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;->this$0:Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory$FenumQualifierHierarchy;->this$0:Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM:Ljavax/lang/model/element/AnnotationMirror;

    .line 110
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method
