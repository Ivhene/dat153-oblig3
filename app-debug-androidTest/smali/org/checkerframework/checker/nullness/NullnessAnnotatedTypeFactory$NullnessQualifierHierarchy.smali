.class public Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;
.super Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;
.source "NullnessAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NullnessQualifierHierarchy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<",
        "Lorg/checkerframework/checker/nullness/NullnessValue;",
        "Lorg/checkerframework/checker/nullness/NullnessStore;",
        "Lorg/checkerframework/checker/nullness/NullnessTransfer;",
        "Lorg/checkerframework/checker/nullness/NullnessAnalysis;",
        ">.InitializationQualifierHierarchy;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
    .param p2, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    .param p3, "arg"    # [Ljava/lang/Object;

    .line 531
    iput-object p1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 532
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;-><init>(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V

    .line 533
    return-void
.end method


# virtual methods
.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 537
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->access$200(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-static {v0, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->access$300(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0

    .line 538
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;->isSubtypeInitialization(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 545
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->access$400(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-static {v0, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->access$500(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$InitializationQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 546
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;->leastUpperBoundInitialization(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method
