.class Lscenelib/annotations/el/ADeclaration$1;
.super Lscenelib/annotations/util/coll/VivifyingMap;
.source "ADeclaration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/el/ADeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/util/coll/VivifyingMap<",
        "Lscenelib/annotations/io/ASTPath;",
        "Lscenelib/annotations/el/ATypeElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lscenelib/annotations/el/ADeclaration;


# direct methods
.method constructor <init>(Lscenelib/annotations/el/ADeclaration;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lscenelib/annotations/el/ADeclaration;

    .line 16
    .local p2, "back":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    iput-object p1, p0, Lscenelib/annotations/el/ADeclaration$1;->this$0:Lscenelib/annotations/el/ADeclaration;

    invoke-direct {p0, p2}, Lscenelib/annotations/util/coll/VivifyingMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createValueFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lscenelib/annotations/io/ASTPath;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/ADeclaration$1;->createValueFor(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/el/ATypeElement;

    move-result-object p1

    return-object p1
.end method

.method public createValueFor(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/el/ATypeElement;
    .locals 1
    .param p1, "k"    # Lscenelib/annotations/io/ASTPath;

    .line 19
    new-instance v0, Lscenelib/annotations/el/ATypeElement;

    invoke-direct {v0, p1}, Lscenelib/annotations/el/ATypeElement;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic isEmptyValue(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/ADeclaration$1;->isEmptyValue(Lscenelib/annotations/el/ATypeElement;)Z

    move-result p1

    return p1
.end method

.method public isEmptyValue(Lscenelib/annotations/el/ATypeElement;)Z
    .locals 1
    .param p1, "v"    # Lscenelib/annotations/el/ATypeElement;

    .line 24
    invoke-virtual {p1}, Lscenelib/annotations/el/ATypeElement;->isEmpty()Z

    move-result v0

    return v0
.end method
