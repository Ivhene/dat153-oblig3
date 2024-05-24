.class public final Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "UpperBoundAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "UpperBoundQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
    .param p2, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 352
    iput-object p1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 353
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    .line 354
    return-void
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 358
    invoke-static {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 359
    .local v0, "a1Obj":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 360
    .local v1, "a2Obj":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 361
    .local v2, "glb":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 402
    invoke-static {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 403
    .local v0, "subtype":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 404
    .local v1, "supertype":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isSubtype(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Z

    move-result v2

    return v2
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 373
    invoke-static {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 374
    .local v0, "a1Obj":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 375
    .local v1, "a2Obj":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->lub(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 376
    .local v2, "lub":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method

.method public numberOfIterationsBeforeWidening()I
    .locals 1

    .line 390
    const/16 v0, 0xa

    return v0
.end method

.method public widenedUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "newQualifier"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "previousQualifier"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 382
    invoke-static {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 383
    .local v0, "a1Obj":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 384
    .local v1, "a2Obj":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->widenUpperBound(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 385
    .local v2, "lub":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method
