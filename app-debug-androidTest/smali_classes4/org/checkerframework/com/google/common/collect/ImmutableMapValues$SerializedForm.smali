.class Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMapValues.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMapValues;
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

    .line 113
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$SerializedForm<TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<*TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$SerializedForm;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 115
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 118
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$SerializedForm<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$SerializedForm;->map:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
