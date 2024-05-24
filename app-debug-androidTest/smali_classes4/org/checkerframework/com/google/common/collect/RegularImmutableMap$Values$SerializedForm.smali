.class Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values$SerializedForm;
.super Ljava/lang/Object;
.source "RegularImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
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
            "*TV;>;"
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
            "*TV;>;)V"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values$SerializedForm<TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<*TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values$SerializedForm;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 299
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 302
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values$SerializedForm<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMap$Values$SerializedForm;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
