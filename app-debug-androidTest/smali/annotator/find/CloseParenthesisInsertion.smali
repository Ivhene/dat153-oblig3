.class public Lannotator/find/CloseParenthesisInsertion;
.super Lannotator/find/Insertion;
.source "CloseParenthesisInsertion.java"


# direct methods
.method public constructor <init>(Lannotator/find/Criteria;Z)V
    .locals 0
    .param p1, "criteria"    # Lannotator/find/Criteria;
    .param p2, "separateLine"    # Z

    .line 12
    invoke-direct {p0, p1, p2}, Lannotator/find/Insertion;-><init>(Lannotator/find/Criteria;Z)V

    .line 13
    return-void
.end method


# virtual methods
.method protected addLeadingSpace(ZIC)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z
    .param p2, "pos"    # I
    .param p3, "precedingChar"    # C

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected addTrailingSpace(Z)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getKind()Lannotator/find/Insertion$Kind;
    .locals 1

    .line 34
    sget-object v0, Lannotator/find/Insertion$Kind;->CLOSE_PARENTHESIS:Lannotator/find/Insertion$Kind;

    return-object v0
.end method

.method protected getText(ZZ)Ljava/lang/String;
    .locals 1
    .param p1, "comments"    # Z
    .param p2, "abbreviate"    # Z

    .line 17
    const-string v0, "))"

    return-object v0
.end method
