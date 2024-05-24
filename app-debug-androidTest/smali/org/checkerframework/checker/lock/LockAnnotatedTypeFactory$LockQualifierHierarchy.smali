.class Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "LockAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;
    .param p2, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 279
    iput-object p1, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 280
    iget-object v0, p1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method private greatestLowerBoundInGuardedByUnknownHierarchy(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 373
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    return-object p2

    .line 377
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    return-object p1

    .line 381
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->isGuardedBy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->isGuardedBy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    :cond_2
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->isGuardSatisfied(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->isGuardSatisfied(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    return-object p1

    .line 394
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private greatestLowerBoundInLockPossiblyHeldHierarchy(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 399
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKPOSSIBLYHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    return-object p2

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKPOSSIBLYHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    return-object p1

    .line 407
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 357
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 358
    .local v0, "a1top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 360
    .local v1, "a2top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKPOSSIBLYHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKPOSSIBLYHELD:Ljavax/lang/model/element/AnnotationMirror;

    .line 361
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->greatestLowerBoundInLockPossiblyHeldHierarchy(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 363
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 364
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->greatestLowerBoundInGuardedByUnknownHierarchy(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 368
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method isGuardSatisfied(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "am"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 288
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDSATISFIED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method isGuardedBy(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "am"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 284
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 6
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 294
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->isGuardedBy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 295
    .local v0, "lhsIsGuardedBy":Z
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->isGuardedBy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    .line 297
    .local v1, "rhsIsGuardedBy":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 301
    const-class v2, Ljava/lang/String;

    .line 302
    const-string v3, "value"

    const/4 v4, 0x1

    invoke-static {p2, v3, v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 304
    .local v2, "lhsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v5, Ljava/lang/String;

    .line 305
    invoke-static {p1, v3, v5, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v3

    .line 307
    .local v3, "rhsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 310
    .end local v2    # "lhsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "rhsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->isGuardSatisfied(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    .line 311
    .local v2, "lhsIsGuardSatisfied":Z
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->isGuardSatisfied(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    .line 313
    .local v3, "rhsIsGuardSatisfied":Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 334
    invoke-static {p2, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    return v4

    .line 340
    :cond_2
    if-eqz v0, :cond_3

    .line 341
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object p2, v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    goto :goto_1

    .line 342
    :cond_3
    if-eqz v2, :cond_4

    .line 343
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object p2, v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDSATISFIED:Ljavax/lang/model/element/AnnotationMirror;

    .line 346
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 347
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object p1, v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    goto :goto_2

    .line 348
    :cond_5
    if-eqz v3, :cond_6

    .line 349
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$LockQualifierHierarchy;->this$0:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object p1, v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDSATISFIED:Ljavax/lang/model/element/AnnotationMirror;

    .line 352
    :cond_6
    :goto_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    return v4
.end method
