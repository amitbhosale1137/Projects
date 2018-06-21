﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Timex.Shared;
/// <summary>
/// Summary description for App_Common
/// </summary>
public class App_Common : ImplSession
{
    public App_Common()
    {
        
    }

    public class GridUtils
    {
        public static string OnGridSort(DataGrid oGrid)
        {
            // Get Order by clause
            string sOrderBy = "";
            foreach (DataGridColumn oCol in oGrid.Columns)
            {
                if (oCol.SortExpression.IndexOf(" ASC") > 1 || oCol.SortExpression.IndexOf(" DESC") > 1)
                {
                    if (sOrderBy.Length > 0)
                        sOrderBy += ", ";
                    sOrderBy += oCol.SortExpression;
                }
            }

            return sOrderBy;
        }

        public static string OnColSortSelection(DataGrid oGrid, DataGridSortCommandEventArgs e)
        {

            foreach (DataGridColumn oCol in oGrid.Columns)
            {
                // Find the right column
                if (e.SortExpression.ToLower().CompareTo(oCol.SortExpression.ToLower()) == 0)
                {
                    oCol.HeaderText = oCol.HeaderText.Replace(" (ASC)", "").Replace(" (DESC)", "");
                    if (e.SortExpression.IndexOf(" ASC") > 1)
                    {
                        oCol.SortExpression = e.SortExpression.Replace(" ASC", " DESC");
                        oCol.HeaderText = oCol.HeaderText + " (DESC)";
                        return oCol.SortExpression;
                    }
                    else if (e.SortExpression.IndexOf(" DESC") > 1)
                    {
                        oCol.SortExpression = e.SortExpression.Replace(" DESC", "");
                        return e.SortExpression;
                    }
                    else
                    {
                        oCol.SortExpression = e.SortExpression + " ASC";
                        oCol.HeaderText = oCol.HeaderText + " (ASC)";
                        return oCol.SortExpression;
                    }
                }
            }

            return "";
        }

        public static void ResetColumnHeadersSort(DataGrid oGrid, int opt)
        {
            foreach (DataGridColumn oCol in oGrid.Columns)
            {
                oCol.HeaderText = oCol.HeaderText.Replace(" (ASC)", "").Replace(" (DESC)", "");
                if (opt == 0)
                {
                    oCol.SortExpression = oCol.SortExpression.Replace(" ASC", "").Replace(" DESC", "");
                }
            }
        }
    }
}
