.class final Lscenelib/annotations/el/AClass$2;
.super Lscenelib/annotations/util/coll/VivifyingMap;
.source "AClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/el/AClass;->createInitBlockMap()Lscenelib/annotations/util/coll/VivifyingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/util/coll/VivifyingMap<",
        "Ljava/lang/Integer;",
        "Lscenelib/annotations/el/ABlock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 199
    .local p1, "back":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lscenelib/annotations/el/ABlock;>;"
    invoke-direct {p0, p1}, Lscenelib/annotations/util/coll/VivifyingMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createValueFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AClass$2;->createValueFor(Ljava/lang/Integer;)Lscenelib/annotations/el/ABlock;

    move-result-object p1

    return-object p1
.end method

.method public createValueFor(Ljava/lang/Integer;)Lscenelib/annotations/el/ABlock;
    .locals 1
    .param p1, "k"    # Ljava/lang/Integer;

    .line 202
    new-instance v0, Lscenelib/annotations/el/ABlock;

    invoke-direct {v0, p1}, Lscenelib/annotations/el/ABlock;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic isEmptyValue(Ljava/lang/Object;)Z
    .locals 0

    .line 199
    check-cast p1, Lscenelib/annotations/el/ABlock;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AClass$2;->isEmptyValue(Lscenelib/annotations/el/ABlock;)Z

    move-result p1

    return p1
.end method

.method public isEmptyValue(Lscenelib/annotations/el/ABlock;)Z
    .locals 1
    .param p1, "v"    # Lscenelib/annotations/el/ABlock;

    .line 207
    invoke-virtual {p1}, Lscenelib/annotations/el/ABlock;->isEmpty()Z

    move-result v0

    return v0
.end method
