.class Lorg/checkerframework/com/google/common/collect/ImmutableEntry;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;
.source "ImmutableEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;->key:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;->value:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
