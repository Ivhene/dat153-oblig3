.class Lorg/checkerframework/com/google/common/collect/Streams$TemporaryPair;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemporaryPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 385
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Streams$TemporaryPair;, "Lorg/checkerframework/com/google/common/collect/Streams$TemporaryPair<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Streams$TemporaryPair;->a:Ljava/lang/Object;

    .line 387
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Streams$TemporaryPair;->b:Ljava/lang/Object;

    .line 388
    return-void
.end method
