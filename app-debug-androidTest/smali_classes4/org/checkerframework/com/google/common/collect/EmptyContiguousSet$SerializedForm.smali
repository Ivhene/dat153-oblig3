.class final Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;
.super Ljava/lang/Object;
.source "EmptyContiguousSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm<TC;>;"
    .local p1, "domain":Lorg/checkerframework/com/google/common/collect/DiscreteDomain;, "Lorg/checkerframework/com/google/common/collect/DiscreteDomain<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;->domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/DiscreteDomain;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$1;

    .line 144
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm<TC;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 152
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm<TC;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet$SerializedForm;->domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/EmptyContiguousSet;-><init>(Lorg/checkerframework/com/google/common/collect/DiscreteDomain;)V

    return-object v0
.end method
