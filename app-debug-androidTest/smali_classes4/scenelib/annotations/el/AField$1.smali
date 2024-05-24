.class final Lscenelib/annotations/el/AField$1;
.super Lscenelib/annotations/util/coll/VivifyingMap;
.source "AField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/el/AField;->newVivifyingLHMap_AF()Lscenelib/annotations/util/coll/VivifyingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/util/coll/VivifyingMap<",
        "TK;",
        "Lscenelib/annotations/el/AField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 54
    .local p1, "back":Ljava/util/Map;, "Ljava/util/Map<TK;Lscenelib/annotations/el/AField;>;"
    invoke-direct {p0, p1}, Lscenelib/annotations/util/coll/VivifyingMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createValueFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AField$1;->createValueFor(Ljava/lang/Object;)Lscenelib/annotations/el/AField;

    move-result-object p1

    return-object p1
.end method

.method public createValueFor(Ljava/lang/Object;)Lscenelib/annotations/el/AField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscenelib/annotations/el/AField;"
        }
    .end annotation

    .line 57
    .local p1, "k":Ljava/lang/Object;, "TK;"
    new-instance v0, Lscenelib/annotations/el/AField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/el/AField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic isEmptyValue(Ljava/lang/Object;)Z
    .locals 0

    .line 54
    check-cast p1, Lscenelib/annotations/el/AField;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AField$1;->isEmptyValue(Lscenelib/annotations/el/AField;)Z

    move-result p1

    return p1
.end method

.method public isEmptyValue(Lscenelib/annotations/el/AField;)Z
    .locals 1
    .param p1, "v"    # Lscenelib/annotations/el/AField;

    .line 62
    invoke-virtual {p1}, Lscenelib/annotations/el/AField;->isEmpty()Z

    move-result v0

    return v0
.end method
