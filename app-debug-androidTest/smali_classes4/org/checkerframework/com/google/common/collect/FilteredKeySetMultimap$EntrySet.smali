.class Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap$EntrySet;
.super Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap$Entries;
.source "FilteredKeySetMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap<",
        "TK;TV;>.Entries;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;

    .line 68
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap$EntrySet;->this$0:Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap$Entries;-><init>(Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 71
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap<TK;TV;>.EntrySet;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
