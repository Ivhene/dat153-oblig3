.class final Lscenelib/annotations/el/AClass$3;
.super Lscenelib/annotations/util/coll/VivifyingMap;
.source "AClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/el/AClass;->createFieldInitMap()Lscenelib/annotations/util/coll/VivifyingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/util/coll/VivifyingMap<",
        "Ljava/lang/String;",
        "Lscenelib/annotations/el/AExpression;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 213
    .local p1, "back":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AExpression;>;"
    invoke-direct {p0, p1}, Lscenelib/annotations/util/coll/VivifyingMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createValueFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 213
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AClass$3;->createValueFor(Ljava/lang/String;)Lscenelib/annotations/el/AExpression;

    move-result-object p1

    return-object p1
.end method

.method public createValueFor(Ljava/lang/String;)Lscenelib/annotations/el/AExpression;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 216
    new-instance v0, Lscenelib/annotations/el/AExpression;

    invoke-direct {v0, p1}, Lscenelib/annotations/el/AExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic isEmptyValue(Ljava/lang/Object;)Z
    .locals 0

    .line 213
    check-cast p1, Lscenelib/annotations/el/AExpression;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AClass$3;->isEmptyValue(Lscenelib/annotations/el/AExpression;)Z

    move-result p1

    return p1
.end method

.method public isEmptyValue(Lscenelib/annotations/el/AExpression;)Z
    .locals 1
    .param p1, "v"    # Lscenelib/annotations/el/AExpression;

    .line 221
    invoke-virtual {p1}, Lscenelib/annotations/el/AExpression;->isEmpty()Z

    move-result v0

    return v0
.end method
