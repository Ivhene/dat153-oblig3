.class Lorg/checkerframework/com/google/common/collect/ImmutableSet$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "elements"    # [Ljava/lang/Object;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SerializedForm;->elements:[Ljava/lang/Object;

    .line 399
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
