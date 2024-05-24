.class Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;
.super Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;

    .line 4144
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4152
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4147
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;

    return-object v0
.end method
