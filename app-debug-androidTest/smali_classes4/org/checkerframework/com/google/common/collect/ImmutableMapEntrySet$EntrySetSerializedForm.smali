.class Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMapEntrySet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
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
            "TK;TV;>;"
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
            "TK;TV;>;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm<TK;TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 127
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 130
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
