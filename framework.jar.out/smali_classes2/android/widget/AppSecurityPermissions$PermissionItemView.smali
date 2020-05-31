.class public Landroid/widget/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

.field private mPackageName:Ljava/lang/String;

.field mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

.field private mShowRevokeUI:Z


# direct methods
.method static synthetic -get0(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    .line 147
    return-void
.end method

.method private addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-boolean v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    if-nez v2, :cond_0

    .line 252
    return-void

    .line 256
    :cond_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v2, v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 258
    .local v0, "isRequired":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 259
    return-void

    .line 262
    :cond_2
    new-instance v1, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;

    invoke-direct {v1, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;-><init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V

    .line 271
    .local v1, "ocl":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x10405b7

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 200
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 201
    const-string/jumbo v9, "theme_primary_color"

    .line 200
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 202
    .local v7, "themeMode":I
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    if-eqz v8, :cond_3

    .line 203
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_0

    .line 204
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 207
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    iget-object v8, v8, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 209
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v8, v8, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->descriptionRes:I

    if-eqz v8, :cond_4

    .line 210
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {v8, v5}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    :goto_0
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 227
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/app/ThemeManager;->isOverlayEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 228
    if-eq v7, v11, :cond_1

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 229
    :cond_1
    const-string/jumbo v8, "#FFFFFF"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 234
    :cond_2
    :goto_1
    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V

    .line 237
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    .line 238
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 199
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    return-void

    .line 214
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    :try_start_0
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v8, v8, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 215
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 219
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .local v1, "appName":Ljava/lang/CharSequence;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    .local v6, "sbuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    .line 221
    aput-object v1, v9, v10

    const v10, 0x1040491

    .line 220
    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string/jumbo v8, "\n\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v8, v8, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 216
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v6    # "sbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v1, v8, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    .restart local v1    # "appName":Ljava/lang/CharSequence;
    goto :goto_2

    .line 231
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 245
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 243
    :cond_0
    return-void
.end method

.method public setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 13
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "showRevokeUI"    # Z

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 156
    const-string/jumbo v11, "theme_primary_color"

    const/4 v12, 0x0

    .line 155
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 157
    .local v9, "themeMode":I
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 158
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 159
    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 160
    move-object/from16 v0, p5

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    .line 162
    const v10, 0x1020340

    invoke-virtual {p0, v10}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 163
    .local v6, "permGrpIcon":Landroid/widget/ImageView;
    const v10, 0x1020341

    invoke-virtual {p0, v10}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 165
    .local v7, "permNameView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 166
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 167
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p1, v10, v8}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 170
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 171
    .local v3, "label":Ljava/lang/CharSequence;
    iget-boolean v10, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v10, :cond_1

    if-eqz p4, :cond_1

    .line 173
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 174
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 175
    .local v5, "parcel":Landroid/os/Parcel;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v5, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 176
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 177
    sget-object v10, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 178
    .local v4, "newStr":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 180
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 181
    move-object v3, v1

    .line 184
    .end local v1    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v4    # "newStr":Ljava/lang/CharSequence;
    .end local v5    # "parcel":Landroid/os/Parcel;
    :cond_1
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p0, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-static {}, Landroid/app/ThemeManager;->isOverlayEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 190
    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 191
    :cond_2
    const-string/jumbo v10, "#FFFFFF"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v10, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 154
    :cond_3
    :goto_0
    return-void

    .line 193
    :cond_4
    invoke-virtual {v6}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method
