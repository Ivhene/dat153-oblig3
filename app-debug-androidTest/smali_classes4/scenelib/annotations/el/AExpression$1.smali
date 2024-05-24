.class Lscenelib/annotations/el/AExpression$1;
.super Lscenelib/annotations/util/coll/VivifyingMap;
.source "AExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/el/AExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/util/coll/VivifyingMap<",
        "Lscenelib/annotations/el/RelativeLocation;",
        "Lscenelib/annotations/el/AMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lscenelib/annotations/el/AExpression;


# direct methods
.method constructor <init>(Lscenelib/annotations/el/AExpression;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lscenelib/annotations/el/AExpression;

    .line 39
    .local p2, "back":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/AMethod;>;"
    iput-object p1, p0, Lscenelib/annotations/el/AExpression$1;->this$0:Lscenelib/annotations/el/AExpression;

    invoke-direct {p0, p2}, Lscenelib/annotations/util/coll/VivifyingMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createValueFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AExpression$1;->createValueFor(Lscenelib/annotations/el/RelativeLocation;)Lscenelib/annotations/el/AMethod;

    move-result-object p1

    return-object p1
.end method

.method public createValueFor(Lscenelib/annotations/el/RelativeLocation;)Lscenelib/annotations/el/AMethod;
    .locals 3
    .param p1, "k"    # Lscenelib/annotations/el/RelativeLocation;

    .line 42
    new-instance v0, Lscenelib/annotations/el/AMethod;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/el/AMethod;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic isEmptyValue(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    check-cast p1, Lscenelib/annotations/el/AMethod;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/AExpression$1;->isEmptyValue(Lscenelib/annotations/el/AMethod;)Z

    move-result p1

    return p1
.end method

.method public isEmptyValue(Lscenelib/annotations/el/AMethod;)Z
    .locals 1
    .param p1, "v"    # Lscenelib/annotations/el/AMethod;

    .line 47
    invoke-virtual {p1}, Lscenelib/annotations/el/AMethod;->isEmpty()Z

    move-result v0

    return v0
.end method
