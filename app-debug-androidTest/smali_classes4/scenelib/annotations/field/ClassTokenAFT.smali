.class public final Lscenelib/annotations/field/ClassTokenAFT;
.super Lscenelib/annotations/field/ScalarAFT;
.source "ClassTokenAFT.java"


# static fields
.field public static final ctaft:Lscenelib/annotations/field/ClassTokenAFT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lscenelib/annotations/field/ClassTokenAFT;

    invoke-direct {v0}, Lscenelib/annotations/field/ClassTokenAFT;-><init>()V

    sput-object v0, Lscenelib/annotations/field/ClassTokenAFT;->ctaft:Lscenelib/annotations/field/ClassTokenAFT;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lscenelib/annotations/field/ScalarAFT;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lscenelib/annotations/field/AFTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscenelib/annotations/field/AFTVisitor<",
            "TR;TT;>;TT;)TR;"
        }
    .end annotation

    .line 50
    .local p1, "v":Lscenelib/annotations/field/AFTVisitor;, "Lscenelib/annotations/field/AFTVisitor<TR;TT;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/field/AFTVisitor;->visitClassTokenAFT(Lscenelib/annotations/field/ClassTokenAFT;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 34
    instance-of v0, p1, Ljava/lang/Class;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "Class"

    return-object v0
.end method
