.class Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;
.super Ljava/lang/Object;
.source "AnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alias"
.end annotation


# instance fields
.field canonical:Ljavax/lang/model/element/AnnotationMirror;

.field canonicalName:Ljava/lang/String;

.field copyElements:Z

.field ignorableElements:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;ZLjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "canonical"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "copyElements"    # Z
    .param p4, "canonicalName"    # Ljava/lang/String;
    .param p5, "ignorableElements"    # [Ljava/lang/String;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonical:Ljavax/lang/model/element/AnnotationMirror;

    .line 272
    iput-boolean p3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->copyElements:Z

    .line 273
    iput-object p4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonicalName:Ljava/lang/String;

    .line 274
    iput-object p5, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->ignorableElements:[Ljava/lang/String;

    .line 275
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->checkRep(Ljava/lang/String;)V

    .line 276
    return-void
.end method


# virtual methods
.method checkRep(Ljava/lang/String;)V
    .locals 5
    .param p1, "aliasName"    # Ljava/lang/String;

    .line 284
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->copyElements:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonical:Ljavax/lang/model/element/AnnotationMirror;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonicalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->ignorableElements:[Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonical:Ljavax/lang/model/element/AnnotationMirror;

    iget-boolean v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->copyElements:Z

    .line 288
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonicalName:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->ignorableElements:[Ljava/lang/String;

    filled-new-array {p1, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bad Alias for %s: [canonical=%s] copyElements=%s canonicalName=%s ignorableElements=%s"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 291
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonical:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonicalName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->ignorableElements:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonical:Ljavax/lang/model/element/AnnotationMirror;

    iget-boolean v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->copyElements:Z

    .line 294
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->canonicalName:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$Alias;->ignorableElements:[Ljava/lang/String;

    filled-new-array {p1, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bad Alias for %s: canonical=%s copyElements=%s [canonicalName=%s ignorableElements=%s]"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
