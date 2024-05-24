.class final Lscenelib/annotations/el/ATypeElement$1;
.super Lscenelib/annotations/util/coll/VivifyingMap;
.source "ATypeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/util/coll/VivifyingMap<",
        "TK;",
        "Lscenelib/annotations/el/ATypeElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 113
    .local p1, "back":Ljava/util/Map;, "Ljava/util/Map<TK;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-direct {p0, p1}, Lscenelib/annotations/util/coll/VivifyingMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createValueFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/ATypeElement$1;->createValueFor(Ljava/lang/Object;)Lscenelib/annotations/el/ATypeElement;

    move-result-object p1

    return-object p1
.end method

.method public createValueFor(Ljava/lang/Object;)Lscenelib/annotations/el/ATypeElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscenelib/annotations/el/ATypeElement;"
        }
    .end annotation

    .line 116
    .local p1, "k":Ljava/lang/Object;, "TK;"
    new-instance v0, Lscenelib/annotations/el/ATypeElement;

    invoke-direct {v0, p1}, Lscenelib/annotations/el/ATypeElement;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic isEmptyValue(Ljava/lang/Object;)Z
    .locals 0

    .line 113
    check-cast p1, Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/ATypeElement$1;->isEmptyValue(Lscenelib/annotations/el/ATypeElement;)Z

    move-result p1

    return p1
.end method

.method public isEmptyValue(Lscenelib/annotations/el/ATypeElement;)Z
    .locals 1
    .param p1, "v"    # Lscenelib/annotations/el/ATypeElement;

    .line 121
    invoke-virtual {p1}, Lscenelib/annotations/el/ATypeElement;->isEmpty()Z

    move-result v0

    return v0
.end method
