.class final enum Lorg/jsoup/parser/TokeniserState$62;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1479
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 3
    .param p1, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p2, "r"    # Lorg/jsoup/parser/CharacterReader;

    .line 1481
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    .line 1482
    .local v0, "c":C
    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 1510
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 1511
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    iput-boolean v1, v2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1512
    sget-object v1, Lorg/jsoup/parser/TokeniserState$62;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1504
    :sswitch_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 1505
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    iput-boolean v1, v2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1506
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1507
    sget-object v1, Lorg/jsoup/parser/TokeniserState$62;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1508
    goto :goto_0

    .line 1498
    :sswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 1499
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    iput-boolean v1, v2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1500
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1501
    sget-object v1, Lorg/jsoup/parser/TokeniserState$62;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1502
    goto :goto_0

    .line 1495
    :sswitch_2
    sget-object v1, Lorg/jsoup/parser/TokeniserState$62;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1496
    goto :goto_0

    .line 1491
    :sswitch_3
    sget-object v1, Lorg/jsoup/parser/TokeniserState$62;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1492
    goto :goto_0

    .line 1488
    :sswitch_4
    nop

    .line 1514
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0x20 -> :sswitch_4
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3e -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch
.end method
