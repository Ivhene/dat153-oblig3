.class final Lorg/checkerframework/com/google/common/collect/Maps$10;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Maps;->asValueToValueFunction(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)V
    .locals 0

    .line 1957
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$10;->val$transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Maps$10;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)TV2;"
        }
    .end annotation

    .line 1960
    .local p1, "v1":Ljava/lang/Object;, "TV1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$10;->val$transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$10;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
