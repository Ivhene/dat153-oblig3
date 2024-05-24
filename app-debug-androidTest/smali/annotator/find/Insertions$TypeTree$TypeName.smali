.class final Lannotator/find/Insertions$TypeTree$TypeName;
.super Ljava/lang/Object;
.source "Insertions.java"

# interfaces
.implements Ljavax/lang/model/element/Name;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions$TypeTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypeName"
.end annotation


# instance fields
.field private final str:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    iput-object p1, p0, Lannotator/find/Insertions$TypeTree$TypeName;->str:Ljava/lang/String;

    .line 1603
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 1612
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$TypeName;->str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 1622
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$TypeName;->str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 1607
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$TypeName;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1617
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$TypeName;->str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1626
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$TypeName;->str:Ljava/lang/String;

    return-object v0
.end method
