.class final Lscenelib/annotations/el/AElement$1;
.super Lscenelib/annotations/util/coll/VivifyingMap;
.source "AElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/el/AElement;->newVivifyingLHMap_AE()Lscenelib/annotations/util/coll/VivifyingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/util/coll/VivifyingMap<",
        "TK;",
        "Lscenelib/annotations/el/AElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 206
    .local p1, "back":Ljava/util/Map;, "Ljava/util/Map<TK;Lscenelib/annotations/el/AElement;>;"
    invoke-direct {p0, p1}, Lscenelib/annotations/util/coll/VivifyingMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createValueFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AElement$1;->createValueFor(Ljava/lang/Object;)Lscenelib/annotations/el/AElement;

    move-result-object p1

    return-object p1
.end method

.method public createValueFor(Ljava/lang/Object;)Lscenelib/annotations/el/AElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscenelib/annotations/el/AElement;"
        }
    .end annotation

    .line 209
    .local p1, "k":Ljava/lang/Object;, "TK;"
    new-instance v0, Lscenelib/annotations/el/AElement;

    invoke-direct {v0, p1}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic isEmptyValue(Ljava/lang/Object;)Z
    .locals 0

    .line 206
    check-cast p1, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AElement$1;->isEmptyValue(Lscenelib/annotations/el/AElement;)Z

    move-result p1

    return p1
.end method

.method public isEmptyValue(Lscenelib/annotations/el/AElement;)Z
    .locals 1
    .param p1, "v"    # Lscenelib/annotations/el/AElement;

    .line 214
    invoke-virtual {p1}, Lscenelib/annotations/el/AElement;->isEmpty()Z

    move-result v0

    return v0
.end method
