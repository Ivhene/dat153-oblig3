.class Lorg/checkerframework/javacutil/AnnotationUtils$NoSuchElementException;
.super Lorg/checkerframework/javacutil/BugInCF;
.source "AnnotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/javacutil/AnnotationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoSuchElementException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 683
    invoke-direct {p0, p1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    .line 684
    return-void
.end method
