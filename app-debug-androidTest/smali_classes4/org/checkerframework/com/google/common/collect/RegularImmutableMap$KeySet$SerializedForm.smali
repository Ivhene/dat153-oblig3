.class Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;
.super Ljava/lang/Object;
.source "RegularImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm<TK;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 249
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 252
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm<TK;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method