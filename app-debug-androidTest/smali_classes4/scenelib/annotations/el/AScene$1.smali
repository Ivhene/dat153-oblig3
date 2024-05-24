.class Lscenelib/annotations/el/AScene$1;
.super Lscenelib/annotations/util/coll/VivifyingMap;
.source "AScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/el/AScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/util/coll/VivifyingMap<",
        "Ljava/lang/String;",
        "Lscenelib/annotations/el/AClass;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lscenelib/annotations/el/AScene;


# direct methods
.method constructor <init>(Lscenelib/annotations/el/AScene;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lscenelib/annotations/el/AScene;

    .line 71
    .local p2, "back":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    iput-object p1, p0, Lscenelib/annotations/el/AScene$1;->this$0:Lscenelib/annotations/el/AScene;

    invoke-direct {p0, p2}, Lscenelib/annotations/util/coll/VivifyingMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createValueFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AScene$1;->createValueFor(Ljava/lang/String;)Lscenelib/annotations/el/AClass;

    move-result-object p1

    return-object p1
.end method

.method public createValueFor(Ljava/lang/String;)Lscenelib/annotations/el/AClass;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 75
    new-instance v0, Lscenelib/annotations/el/AClass;

    invoke-direct {v0, p1}, Lscenelib/annotations/el/AClass;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic isEmptyValue(Ljava/lang/Object;)Z
    .locals 0

    .line 71
    check-cast p1, Lscenelib/annotations/el/AClass;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AScene$1;->isEmptyValue(Lscenelib/annotations/el/AClass;)Z

    move-result p1

    return p1
.end method

.method public isEmptyValue(Lscenelib/annotations/el/AClass;)Z
    .locals 1
    .param p1, "v"    # Lscenelib/annotations/el/AClass;

    .line 80
    invoke-virtual {p1}, Lscenelib/annotations/el/AClass;->isEmpty()Z

    move-result v0

    return v0
.end method
